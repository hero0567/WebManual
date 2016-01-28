'use strict';

/**
 * IndexController
 * @constructor
 */

app.controller("IndexController", function($scope, $http, $location, $window, userService) {
	$scope.mockData= [{
							type:"大家电", 
							subTypes: 
							[
								{subType:"电视"},
								{subType:"冰箱"},
								{subType:"洗衣机"},
								{subType:"电视"},
								{subType:"冰箱"},
								{subType:"电视"},
								{subType:"冰箱"},
								{subType:"电视"},
								{subType:"冰箱"},
								{subType:"电视"},
								{subType:"冰箱"}
							]
						},
						{
							type:"小家电"	,
							subTypes:
					 		[
							 	{subType:"吸尘器"},
								{subType:"电熨斗"},
								{subType:"吸尘器"},
								{subType:"电熨斗"},
								{subType:"吸尘器"},
								{subType:"电熨斗"}
					 		]
						}];
	
	$scope.menu = {};
    $scope.handbook = [];
    
    $scope.size = 2;    
    $scope.type = "全部";
    $scope.key = "";
    $scope.login = {status : false};
    
    userService.initUser();
	$scope.user = userService.getUser();
    
    $scope.fetchMenu = function() {
     	 $http.get('/menu').success(function(menu){
              $scope.menu = menu;
              console.log(menu);
              $scope.fetchSubTypes();
        });
  	}  
    
    $scope.changeMenu = function(type, count) {
    	window.location = "/appliance?subtype="+type +"&count="+count;
  	}
    
    $scope.fetchSubTypes = function() {
    	angular.forEach($scope.menu, function (m, index) {
    		$http.get('/hb/大家电/'+m.subType+'?size=' + $scope.size).success(function(types){
                $scope.handbook.push({name:m.subType, count:m.count, subType: types, sequence: m.sequence}); 
                if ($scope.handbook.length == $scope.menu.length){
                	$scope.fetchFavorite();
                }
    		});
    	});    	
  	} 
    
    $scope.addFavorite = function(uid, sub){
    	userService.addFavorite(uid, sub);
	}
    
    $scope.fetchFavorite = function() {
    	if ($scope.user.id){
    		$http.get('/favor/' + $scope.user.id).success(function(favor){
    			angular.forEach(favor, function (f) {
	                angular.forEach($scope.handbook, function (hb) {
	                	angular.forEach(hb.subType, function (type) {
                			if (type.id == f.handBook.id){
                				type.favor = true;
                				console.log(type);
                			}
                        });
                    });
                });
    		});
    	}
 	}     
    
    $scope.fetchMenu();
});