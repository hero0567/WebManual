'use strict';

/**
 * SignupController
 * @constructor
 */
var SignupController = function($scope, $http, $location) {
	
	$scope.imageUrl = "/sec/img";
	$scope.user = {username : "1111@163.com", password : "111111",  confirmUserPassword : "111111", captcha : "1111"};
	
	$scope.changeCaptcha = function(){
		$scope.imageUrl = "/sec/img?rnd=" + Math.random();	 
	}
		
	$scope.signup = function() {
		console.log($scope.user);
	    $http({
	        method  : 'POST',
	        url     : '/register',
	        data    : $.param($scope.user),  // pass in data as strings
	        headers : { 'Content-Type': 'application/x-www-form-urlencoded' }  // set the headers so angular passing info as form data (not request payload)
	    })
        .success(function(data) {
        	window.location = "/signin";
        }).error(function() {
        	$scope.user.captcha = "";
        });
	};
	
	$scope.checkEmailExist = function(){
		if($scope.myForm.$valid){
			$http.get('/u/' + $scope.user.username).success(function(){
	            console.log("created");
	        }).error(function() {
	        	console.log("failure");
	        });
		}
	}
};