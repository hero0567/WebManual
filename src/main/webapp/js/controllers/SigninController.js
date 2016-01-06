'use strict';

/**
 * SigninController
 * @constructor
 */
var SigninController = function($scope, $http, $location) {
	$scope.user ={}
	
	$scope.signin = function(){
		 
	}
	
	//Hide angularjs tag flicker
	$scope.hideFlicker = function(){
		if($('body').hasClass('d-n'))$('body').removeClass('d-n'); 
	}
	
	$scope.hideFlicker();
};