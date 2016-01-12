'use strict';

app.factory('userService', ['$http','$cookies', function($http, $cookies) {

	var user = {};
	
	function initUser(){
		var u = $cookies.getObject("user");
		if (angular.isDefined(u)){
			user.id = u.id;
			user.username = u.username;
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
 


