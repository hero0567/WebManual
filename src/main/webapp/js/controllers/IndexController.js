'use strict';

/**
 * IndexController
 * @constructor
 */
var IndexController = function($scope, $http) {
	
    $scope.tvs = {};
    $scope.refrigerators = {};
    $scope.airConditions = {};
    $scope.waterMahines = {};
    $scope.waterHeaders = {};
    $scope.warterCleaners = {};
    $scope.airCleaners = {};
    
    $scope.searchKey = "全部";
    
    $scope.fetchTV = function() {
   	 $http.get('/hb/大家电/电视?size=2').success(function(tvs){
            $scope.tvs = tvs;
        });
	}   
    
    $scope.fetchRefrigerator = function() {
     	 $http.get('/hb/大家电/冰箱?size=2').success(function(refrigerators){
              $scope.refrigerators = refrigerators;
          });
  	}   
   
    
    $scope.fetchAirCondition = function() {
      	 $http.get('/hb/大家电/空调?size=2').success(function(airConditions){
               $scope.airConditions = airConditions;
           });
   	}   
    
    $scope.fetchWaterMahine = function() {
      	 $http.get('/hb/大家电/洗衣机?size=2').success(function(waterMahines){
               $scope.waterMahines = waterMahines;
           });
   	}   
    
    $scope.fetchWaterHeader = function() {
      	 $http.get('/hb/大家电/热水器').success(function(waterHeaders){
               $scope.waterHeaders = waterHeaders;
           });
   	}   
    
    $scope.fetchWarterCleaner = function() {
      	 $http.get('/hb/大家电/净水器?size=2').success(function(warterCleaners){
               $scope.warterCleaners = warterCleaners;
           });
   	}   
    
    $scope.fetchAirCleaner = function() {
      	 $http.get('/hb/大家电/空气净化器?size=2').success(function(airCleaners){
               $scope.airCleaners = airCleaners;
           });
   	}   
    
    $scope.search = function() {
      	alert($scope.searchKey);
   	} 
    
    $scope.changeSearchKey = function(key) {
    	 $scope.searchKey = key;
   	}  
    
    $scope.fetchTV(); 
    $scope.fetchRefrigerator();
    $scope.fetchAirCondition();  
    $scope.fetchWaterMahine();  
    $scope.fetchWaterHeader();  
    $scope.fetchWarterCleaner();  
    $scope.fetchAirCleaner();  
};