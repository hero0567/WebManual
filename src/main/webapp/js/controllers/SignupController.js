'use strict';

/**
 * SignupController
 * @constructor
 */
var SignupController = function($scope, $http, $location) {
	
	$scope.imageUrl = "/sec/img";
	$scope.user = {username : "1111@163.com", password : "111111",  confirmUserPassword : "111111"};
	$scope.error = {userexisted : false, captcha : false, register : true};
	
	$scope.changeCaptcha = function(){
		$scope.imageUrl = "/sec/img?rnd=" + Math.random();	 
	}
		
	$scope.signup = function() {
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
        	$scope.error.register = "";
        });
	};
	
	$scope.checkEmailExist = function(){
		if($scope.myForm.$valid){
			$http.get('/u?uname=' + $scope.user.username).success(function(){
	            $scope.error.userexisted = false;
	        }).error(function() {
	        	$scope.error.userexisted = true;
	        });
		}
	}
	
	$scope.checkSecCode = function(){
		if($scope.myForm.$valid){
			$http.get('/sec/img/check?code=' + $scope.user.captcha).success(function(){
	            $scope.error.captcha = false;
	        }).error(function() {
	        	$scope.error.captcha = true;
	        });
		}
	}
};

