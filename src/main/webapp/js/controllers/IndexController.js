'use strict';

/**
 * IndexController
 * @constructor
 */

app.controller("IndexController", function($scope, $http, $location, $window, userService) {
		
	
	$scope.typenu = 0;
	$scope.brandnu = 0;
	$scope.typemenu = {};
	$scope.brandmenu = {};
    
    userService.initUser();
	$scope.user = userService.getUser();
    
    $scope.fetchTypeMenu = function() {
    	$http.get('/menu/type').success(function(menu){
    		$scope.typemenu = menu;
			var count = 0;
			angular.forEach(menu, function (m) {
				count += m.typecount; 
			});
			$scope.typenu = count;
       		
        });
  	}  
    
    $scope.fetchBrandMenu = function() {
    	 $http.get('/menu/brand').success(function(menu){
    		 $scope.brandmenu = menu;
    		 var count = 0;
    		 angular.forEach(menu, function (m) {
    			 count += m.origincount; 
    		 });
    		 $scope.brandnu = count;
       });
 	} 
    
    $scope.changeMenu = function(type, subtype, count) {
    	window.location = "/appliance?type="+type +"&subtype="+subtype +"&count="+count;
  	}  
    
    $scope.fetchTypeMenu();
    $scope.fetchBrandMenu();
});