'use strict';

app.factory('loginService', ['$http', function($http) {

	function setUser(){
		 console.log("set users");
	}
	
	return {
		setUser: setUser
	}
}]);
 


