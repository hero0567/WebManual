'use strict';

/**
 * IndexController
 * @constructor
 */

app.controller("TvController", function($scope, $http, $location, $window, userService) {
		
    
	$scope.brands = [{name: '海尔', checked : false},
	                 {name: '长虹', checked : false},
	                 {name: '海信', checked : false},
	                 {name: 'LG', checked : false},
	                 {name: 'TCL', checked : false},
	                 {name: '三星', checked : false},
	                 {name: 'TCL', checked : false},];
	
	$scope.timeline = [{name: '2012年之前', checked : false},
	                 {name: '2013', checked : false},
	                 {name: '2014', checked : false},
	                 {name: '2015', checked : false}];
	
    $scope.check = function(obj) {
    	obj.checked = !obj.checked ;
  	}  
    
    
    $scope.clearBrand = function() {
    	angular.forEach($scope.brands, function (brand) {
    		brand.checked = false; 
    	});
  	} 
    
    $scope.clearTimeline = function() {
    	angular.forEach($scope.timeline, function (time) {
    		time.checked = false; 
    	});
  	} 
    
    $scope.clearAll = function() {
    	$scope.clearBrand();
    	$scope.clearTimeline();
  	} 
});