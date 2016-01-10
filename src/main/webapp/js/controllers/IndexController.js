'use strict';

/**
 * IndexController
 * @constructor
 */

app.controller("IndexController", function($scope, $http, $location, userService) {
	
	$scope.menu = {};
    $scope.handbook = [];
    $scope.favor = {};
    
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
    
    $scope.fetchSubTypes = function() {
    	angular.forEach($scope.menu, function (m, index) {
    		$http.get('/hb/大家电/'+m.subType+'?size=' + $scope.size).success(function(types){
                $scope.handbook.push({name:m.subType, count:m.count, subType: types});  
                if ($scope.handbook.length == $scope.menu.length){
                	$scope.fetchFavorite();
                }
    		});
    	});    	
  	} 
    
    $scope.fetchFavorite = function() {
    	console.log("fetchFavorite" + $scope.handbook.length);
    	if ($scope.user.id){
    		$http.get('/favor/' + $scope.user.id).success(function(favor){
                $scope.favor = favor;
                angular.forEach($scope.handbook, function (hb) {
                	angular.forEach(hb.subType, function (type) {
                		angular.forEach(favor, function (f) {
                			if (type.id == f.handBook.id){
                				type.favor = "true";
                            	console.log("type:"+type.id);
                            	console.log("favor:"+f.handBook.id);
                			}
//                        	console.log("type:"+type.id);
//                        	console.log("favor:"+f.handBook.id);
                        });
                    });
                });
    		});
    	}
 	} 
    
    $scope.changeMenu = function(type, count) {
    	window.location = "/fridge?subtype="+type +"&count="+count;
  	} 
    
    $scope.addFavorite = function(uid, hbid){	
		console.log("addFavorite");
		if (uid){
			$http.post('/favor/'+uid+'/' + hbid, {}).success(function() {    	
				
	        });
    	}else{
    		window.location = "/signin";
    	}
	}
    
    //Hide angularjs tag flicker
	$scope.hideFlicker = function(){
		if($('body').hasClass('d-n'))$('body').removeClass('d-n'); 
	}
	
	//$scope.hideFlicker();
    $scope.fetchMenu();
});