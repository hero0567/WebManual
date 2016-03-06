'use strict';

/**
 * SelfInfoController
 * @constructor
 */

app.controller("SelfInfoController", function($scope, $http, $location, $window, userService) {
		
	$scope.user = {};
	$scope.updateSuccess = false;
	$scope.updateFailed = false;
    
    $scope.updateSelfInfo = function() {
    	
    	$http.post('/user/passwd', $scope.user).success(function(result){
    		$scope.reset();
    		$scope.updateSuccess = true;
    		$scope.updateFailed = false;
		}).error(function() {
			$scope.reset();
			$scope.updateFailed = true;	
			$scope.updateSuccess = false;
        });
  	}; 
  	
  	$scope.reset = function() {
  		$scope.user = {};
  		$scope.myForm.$setPristine();
  	}
    
});