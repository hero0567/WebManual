'use strict';

/**
 * IndexController
 * @constructor
 */
var SearchController = function($scope, $http, $location) {
	
    
	$scope.key = angular.element($('#key')).attr("value");
	$scope.type = angular.element($('#type')).attr("value");
	$scope.results = {};
	
    
    $scope.showMsg = function() {   
    	console.log($scope.type);
    	console.log($scope.key);
	}   
    
    $scope.fetchSearchResult = function() {
    	
    	if ($scope.type == '全部'){
    		$http.get('/s/大家电/' + $scope.key).success(function(results){
                $scope.results = results;
            });
    	}else{
    		$http.get('/s/大家电/' + $scope.type + '/' + $scope.key).success(function(results){
                $scope.results = results;
            });
    	}
  	}  
    
    $scope.fetchSearchResult();
};