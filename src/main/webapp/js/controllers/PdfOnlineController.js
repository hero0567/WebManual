'use strict';

/**
 * PdfOnlineController
 * @constructor
 */
app.controller("PdfOnlineController", function($scope, $http, $location, $window, userService) {
	
	$scope.menu = {};
	$scope.handbook = {};
	$scope.params = {};
	$scope.services = {};
	$scope.id = "";
    
	userService.initUser();
	$scope.user = userService.getUser();
	
	$scope.parseParams = function(){
		var paramHash = userService.parseParams(window.location.search)
    	$scope.id = paramHash.id;
    }
     
    $scope.addFavorite = function(uid, sub){
    	userService.addFavorite(uid, sub);
	}
});