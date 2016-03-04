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
    
    $scope.fetchTypeMenu = function() {
    	$('#typeData-loading').removeClass('d-n');
    	$http.get('/menu/type').success(function(menu){
    		$('#typeData-loading').addClass('d-n');
    		$scope.typemenu = menu;
			var count = 0;
			angular.forEach(menu, function (m) {
				count += m.typecount; 
			});
			$scope.typenu = count;
       		
        });
  	}  
    
    $scope.fetchBrandMenu = function() {
    	 $('#brandsData-loading').removeClass('d-n');
    	 
    	 $http.get('/menu/brand').success(function(menu){
    		 $('#brandsData-loading').addClass('d-n');
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