'use strict';

app.factory('userService', ['$http', function($http) {

	var login = {status : false};
	var user = {};
	
	function initUser(){
//		if (angular.isUndefined($scope.login)){
//			$scope.login = {status : false};
//			$scope.user = {};
//		}
		if (angular.isDefined(sessionStorage.user)){
			var u = JSON.parse(sessionStorage.user);	
			user.id = u.id;
			user.username = u.username;
			login.status = true;
		}
 	}	
	
	function getUser(){
		return user;
	}	
	
	
	return {
		initUser : initUser,
		getUser : getUser
	}
}]);
 


