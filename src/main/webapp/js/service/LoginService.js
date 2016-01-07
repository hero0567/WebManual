'use strict';

app.factory('loginService', ['$http', function($http) {

	var user = {};
	
	function setUser(u){
		user = u;
	}
	
	function getUser(){
		return user;
	}
	
	return {
		setUser: setUser,
		getUser: getUser
	}
}]);
 


