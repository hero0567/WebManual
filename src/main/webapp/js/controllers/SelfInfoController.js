'use strict';

/**
 * SelfInfoController
 * @constructor
 */

app.controller("SelfInfoController", function($scope, $http, $location, $window, userService) {
		
	
	$scope.typenu = 0;
    
    
    $scope.updateSelfInfo = function() {
    	$http({
	        method  : 'POST',
	        url     : '/my/passwd',
	        data    : $.param($scope.user),  // pass in data as strings
	        headers : { 'Content-Type': 'application/x-www-form-urlencoded' }  // set the headers so angular passing info as form data (not request payload)
	    })
        .success(function(data) {
        	console.log(data);	
        }).error(function() {
        	$scope.error.loginfailed = true;
        });
  	}  
    
});