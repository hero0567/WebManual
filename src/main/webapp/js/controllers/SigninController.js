'use strict';

/**
 * SigninController
 * @constructor
 */
app.controller("SigninController", function($scope, $http, $location) {
	
	$scope.imageUrl = "/sec/img";
	$scope.user = {username : "1111@163.com", password : "111111" };
	$scope.error = {captcha : false, loginfailed : false};
	
	$scope.changeCaptcha = function(){
		$scope.imageUrl = "/sec/img?rnd=" + Math.random();	 
	}
		
	$scope.signin = function() {		
	    $http({
	        method  : 'POST',
	        url     : '/login',
	        data    : $.param($scope.user),  // pass in data as strings
	        headers : { 'Content-Type': 'application/x-www-form-urlencoded' }  // set the headers so angular passing info as form data (not request payload)
	    })
        .success(function(data) {
        	window.location = "/";
        }).error(function() {
        	$scope.user.captcha = "";
        	$scope.error.loginfailed = true;
        });
	};
	
	
	$scope.checkSecCode = function(){
		if($scope.myForm.$valid){
			$http.get('/sec/img/check?code=' + $scope.user.captcha).success(function(){
	            $scope.error.captcha = false;
	        }).error(function() {
	        	$scope.error.captcha = true;
	        	$scope.changeCaptcha();
	        });
		}
	}
	
	//Hide angularjs tag flicker
	$scope.hideFlicker = function(){
		if($('body').hasClass('d-n'))$('body').removeClass('d-n'); 
	}
	
	//$scope.hideFlicker();
});
