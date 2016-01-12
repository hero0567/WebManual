'use strict';

app.factory('userService', ['$http','$cookieStore', function($http, $cookieStore) {

	var user = {};
	
	function initUser(){
		var u = $cookieStore.get("user");
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
 


