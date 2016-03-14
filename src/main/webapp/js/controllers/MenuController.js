'use strict';

/**
 * MenuController
 * @constructor
 */

app.controller("MenuController", function($scope, $http, $location, $window, userService) {
	$scope.typenu = 0;
	$scope.typemenu = {};
    
    $scope.fetchTypeMenu = function() {
    	$http.get('/menu/type').success(function(menu){
    		$('#typeData-loading').addClass('d-n');
    		$scope.typemenu = menu;
			var count = 0;
			angular.forEach(menu, function (m) {
				count += m.typecount; 
			});
			$scope.typenu = count;
			console.log($scope.typemenu);
       		
        });
  	}  
    
    $scope.changeMenu = function(type, subtype, count) {
    	window.location = "/appliance?type="+type +"&subtype="+subtype +"&count="+count;
  	}  
    
    $scope.fetchTypeMenu();
});