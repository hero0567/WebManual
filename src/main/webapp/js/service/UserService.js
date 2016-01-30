'use strict';

app.factory('userService', ['$http','$cookies', '$window', function($http, $cookies, $window) {
	var user = {};
	var timeline = ['全部', '2012以前', '2013', '2014', '2015', '2016'];
	
	function addFavorite(uid, sub){
		if (uid){
			if (sub.favor){
				
				var ret = $window.confirm('确认取消收藏?');  
				if (!ret){
					return;
				}
				$http.delete('/favor/'+uid+'/' + sub.id).success(function() {
					sub.favor = false;
		        }); 
			}else{
				$http.post('/favor/'+uid+'/' + sub.id, {}).success(function() {
					sub.favor = true;
		        });
			}
    	}else{
    		$window.location = "/signin";
    	}
	}
	
	function parseParams(){
		$http.get('/sec/img/check?code=' + $scope.user.captcha).success(function(){
            $scope.error.captcha = false;
        }).error(function() {
        	$scope.error.captcha = true;
        });
	}
	
	function parseParams(paramString){
    	var paramAry = paramString.substr(1).split('&');  
    	var paramHash = {};    
    	
    	paramAry.forEach(function(param){
    		var kv = param.split('=');  
    		if (kv.length = 2){
    			paramHash[kv[0]] = decodeURI(kv[1]);
    		}
    	});
    	return paramHash;
    } 
	
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
		getTimeline : getTimeline,
		addFavorite : addFavorite,
		parseParams : parseParams
	}
}]);
 


