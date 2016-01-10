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
	
	$scope.addBookMark = function() {
		if (document.all){
			window.external.addFavorite('http://www.92shuomingshu.com','92shuomingshu');
		}
		else if (angular.isFunction(window.sidebar.addPanel)){
			window.sidebar.addPanel('92shuomingshu', 'http://www.92shuomingshu.com', "");
		}
	}
	
	$scope.init();
});