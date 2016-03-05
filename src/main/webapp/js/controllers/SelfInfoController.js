'use strict';

/**
 * SelfInfoController
 * @constructor
 */

app.controller("SelfInfoController", function($scope, $http, $location, $window, userService) {
		
	
	$scope.typenu = 0;
    
    
    $scope.changeMenu = function(type, subtype, count) {
    	window.location = "/appliance?type="+type +"&subtype="+subtype +"&count="+count;
  	}  
    
});