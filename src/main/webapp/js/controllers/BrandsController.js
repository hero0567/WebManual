'use strict';

/**
 * BrandsController
 * @constructor
 */

app.controller("BrandsController", function($scope, $http, $location, $window, userService) {
		
    
	$scope.productTypes = [{name: '电视', checked : false},
	                 {name: '冰箱', checked : false},
	                 {name: '洗衣机', checked : false},
	                 {name: '空调', checked : false},
	                 {name: '热水器', checked : false},
	                 {name: '饮水机', checked : false},
	                 {name: '电饭煲', checked : false},];
	
	$scope.timeline = [{name: '2012年之前', checked : false},
	                 {name: '2013', checked : false},
	                 {name: '2014', checked : false},
	                 {name: '2015', checked : false}];
	
    $scope.check = function(obj) {
    	obj.checked = !obj.checked ;
  	}  
    
    
    $scope.clearProductTypes = function() {
    	angular.forEach($scope.productTypes, function (brand) {
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