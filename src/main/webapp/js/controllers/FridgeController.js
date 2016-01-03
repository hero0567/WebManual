'use strict';

/**
 * FridgeController
 * @constructor
 */
var FridgeController = function($scope, $http, $location) {
	
	$scope.menu = {};
    $scope.tvs = {};
    $scope.refrigerators = {};
    $scope.airConditions = {};
    $scope.waterMahines = {};
    $scope.waterHeaders = {};
    $scope.warterCleaners = {};
    $scope.airCleaners = {};
    $scope.params = {};
    
    $scope.size = 10;    
    $scope.type = "全部";
    $scope.key = "";
        
    $scope.parseParams = function(){
    	var paramString = window.location.search;
    	var params = paramString.substr(1).split('&');  

    	params.forEach(function(param){
    		var kv = param.split('=');  
    		if (kv.length = 2){
    			$scope.params[kv[0]] = decodeURI(kv[1]);
    		}
    	});
    }    
    
    $scope.fetchMenu = function() {
      	 $http.get('/menu').success(function(menu){
               $scope.menu = menu;
         });
   	}  
    
    $scope.fetchTV = function() {
   	 $http.get('/hb/大家电/电视?size=' + $scope.size).success(function(tvs){
            $scope.tvs = tvs;
        });
	}   
    
    $scope.fetchRefrigerator = function() {
     	 $http.get('/hb/大家电/冰箱?size=' + $scope.size).success(function(refrigerators){
              $scope.refrigerators = refrigerators;
          });
  	}   
    
    $scope.fetchAirCondition = function() {
      	 $http.get('/hb/大家电/空调?size=' + $scope.size).success(function(airConditions){
               $scope.airConditions = airConditions;
           });
   	}   
    
    $scope.fetchWaterMahine = function() {
      	 $http.get('/hb/大家电/洗衣机?size=' + $scope.size).success(function(waterMahines){
               $scope.waterMahines = waterMahines;
           });
   	}   
    
    $scope.fetchWaterHeader = function() {
      	 $http.get('/hb/大家电/热水器?size=' + $scope.size).success(function(waterHeaders){
               $scope.waterHeaders = waterHeaders;
           });
   	}   
    
    $scope.fetchWarterCleaner = function() {
      	 $http.get('/hb/大家电/净水器?size=' + $scope.size).success(function(warterCleaners){
               $scope.warterCleaners = warterCleaners;
           });
   	}   
    
    $scope.fetchAirCleaner = function() {
      	 $http.get('/hb/大家电/空气净化器?size=' + $scope.size).success(function(airCleaners){
               $scope.airCleaners = airCleaners;
           });
   	}   
    
    $scope.search = function() {
      	window.location = "/search?type=" + $scope.type + "&key=" + $scope.key;
   	} 
    
    $scope.changeSearchType = function(type) {
    	 $scope.type = type;
   	}  
    
    $scope.parseParams();
    $scope.fetchMenu();
    $scope.fetchTV(); 
    $scope.fetchRefrigerator();
    $scope.fetchAirCondition();  
    $scope.fetchWaterMahine();  
    $scope.fetchWaterHeader();  
    $scope.fetchWarterCleaner();  
    $scope.fetchAirCleaner();  
};