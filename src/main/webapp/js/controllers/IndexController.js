'use strict';

/**
 * IndexController
 * @constructor
 */

app.controller("IndexController", function($scope, $http, $location, $window, userService) {
	
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
		if (uid){
			if (sub.favor){
				var ret = $window.confirm('确认取消收藏?');  
				if (!ret){
					return;
				}
				$http.delete('/favor/'+uid+'/' + sub.id).success(function() {
					sub.favor = false;
		        });
			}else{
				$http.post('/favor/'+uid+'/' + sub.id, {}).success(function() {
					sub.favor = true;
		        });
			}
    	}else{
    		window.location = "/signin";
    	}
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