'use strict';

app.factory('loginService', ['$http', function($http) {

	var menu = {};
	
	function setMenu(u){
		user = u;
	}
	
	function getMenu(){
		return user;
	}
	
	return {
		setMenu: setMenu,
		getMenu: getMenu
	}
}]);
 


