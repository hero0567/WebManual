'use strict';

/**
 * SigninController
 * @constructor
 */
app.controller("SigninController", function($scope, $http, $location, $cookies) {
	
	$scope.imageUrl = "/sec/img";
	$scope.user = {username : "", password : "" };
	$scope.error = {captcha :false, loginfailed : false};
//	$scope.expired = 7;
		
	$scope.changeCaptcha = function(){
		$scope.imageUrl = "/sec/img?rnd=" + Math.random();	 
	}
	
	
	$scope.signin = function() {
		$http.get('/sec/img/check?code=' + $scope.user.captcha).success(function(){
			submitLogin();
        }).error(function() {
        	$scope.error.captcha = true;
        });		
	};
	
	
	$scope.checkSecCode = function(){
		if($scope.myForm.$valid){
			$http.get('/sec/img/check?code=' + $scope.user.captcha).success(function(){
	            $scope.error.captcha = false;
	        }).error(function() {
	        	$scope.error.captcha = true;
	        });
		}
	}
	
	function submitLogin(){
		 $http({
	        method  : 'POST',
	        url     : '/signin',
	        data    : $.param($scope.user),  // pass in data as strings
	        headers : { 'Content-Type': 'application/x-www-form-urlencoded' }  // set the headers so angular passing info as form data (not request payload)
	    })
        .success(function(data) {
        	$http.get('/u/user').success(function(user){
        		if (angular.isDefined(user.username)){
        			$cookies.putObject("user", user); 
            		window.location = "/";
        		}else{
                	$scope.error.loginfailed = true;
        		}
            })        	
        }).error(function() {
        	$scope.error.loginfailed = true;
        });
	}
});
