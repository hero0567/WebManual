'use strict';

/**
 * IndexController
 * @constructor
 */

app.controller("HeaderController", function($scope, $http) {			
		
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
	
	function addFavorite(uid, hbid){		
		$http.post('/favor/'+uid+'/' + hbid, {}).success(function() {    		
        });
	}
});