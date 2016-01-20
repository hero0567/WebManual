'use strict';

/**
 * IndexController
 * @constructor
 */

app.controller("HeaderController", function($scope, $http, $cookieStore) {			
		
	$scope.addBookMark = function() {
		if (document.all){
			window.external.addFavorite('http://www.92shuomingshu.com','92shuomingshu');
		}
		else if (angular.isFunction(window.sidebar.addPanel)){
			window.sidebar.addPanel('92shuomingshu', 'http://www.92shuomingshu.com', "");
		}
	}
	
	$scope.search = function() {
      	window.location = "/result?key=" + $scope.key;
   	} 
	
	$scope.logout = function() {
		$cookieStore.remove("user");
		window.location = "/logout";
	}	
});