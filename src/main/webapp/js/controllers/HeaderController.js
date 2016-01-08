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
	
	$scope.addfavorite = function() {
		if (document.all)
		{
			window.external.addFavorite('http://www.92shuomingshu.com','XXX');
		}
		else if (window.sidebar)
		{
			window.sidebar.addPanel('XXX', 'http://www.92shuomingshu.com', "");
		}
	}
	
	$scope.init();
});