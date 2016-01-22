'use strict';

app.factory('userService', ['$http','$cookies', function($http, $cookies) {

	var user = {};
	var timeline = ['全部', '2012以前', '2013', '2014', '2015', '2016'];
	
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
	
	function getTimeline(){
		return timeline;
	}
	
	return {
		initUser : initUser,
		getUser : getUser,
		getTimeline : getTimeline
	}
}]);
 


