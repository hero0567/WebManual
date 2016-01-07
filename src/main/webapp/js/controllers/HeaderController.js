'use strict';

/**
 * IndexController
 * @constructor
 */

app.controller("HeaderController", function($scope, $http) {
	
	$scope.login = false;
	
	$scope.init = function() {
    	 if (angular.isDefined(sessionStorage.user)){
    		 $scope.user = JSON.parse(sessionStorage.user);	
    		 $scope.login = true;
    	 }
 	}	
	
	$scope.init();
});