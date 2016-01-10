'use strict';

/**
 * IndexController
 * @constructor
 */

app.controller("HeaderController", function($scope, $http) {
			
	$scope.init = function() {
		if (angular.isUndefined($scope.login)){
			$scope.login = {status : false};
		}
		if (angular.isDefined(sessionStorage.user)){
			$scope.user = JSON.parse(sessionStorage.user);	
			$scope.login.status = true;
		}
		console.log($scope.user);
 	}	
	
	$scope.addBookMark = function() {
		if (document.all){
			window.external.addFavorite('http://www.92shuomingshu.com','92shuomingshu');
		}
		else if (angular.isFunction(window.sidebar.addPanel)){
			window.sidebar.addPanel('92shuomingshu', 'http://www.92shuomingshu.com', "");
		}
	}
	
	$scope.logout = function() {
		delete sessionStorage.user;
		window.location = "/logout";
	}
	
	$scope.init();
});