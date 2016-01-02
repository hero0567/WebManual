'use strict';

/**
 * IndexController
 * @constructor
 */
var IndexController = function($scope, $http, $location) {
	
	$scope.menu = {};
    $scope.handbook = [];
    
    $scope.size = 2;    
    $scope.type = "全部";
    $scope.key = "";
    
    $scope.fetchMenu = function() {
     	 $http.get('/menu').success(function(menu){
              $scope.menu = menu;
        });
  	}  
    
    $scope.fetchTV = function() {
   	 $http.get('/hb/大家电/电视?size=' + $scope.size).success(function(tvs){
            $scope.handbook.push({name:"电视", subType: tvs});
        });
	}   
    
    $scope.fetchRefrigerator = function() {
     	 $http.get('/hb/大家电/冰箱?size=' + $scope.size).success(function(refrigerators){
              $scope.handbook.push({name:"冰箱", subType: refrigerators});
          });
  	}   
   
    
    $scope.fetchAirCondition = function() {
      	 $http.get('/hb/大家电/空调?size=' + $scope.size).success(function(airConditions){
               $scope.handbook.push({name:"空调", subType: airConditions});
           });
   	}   
    
    $scope.fetchWaterMahine = function() {
      	 $http.get('/hb/大家电/洗衣机?size=' + $scope.size).success(function(waterMahines){
               $scope.handbook.push({name:"洗衣机", subType: waterMahines});
           });
   	}   
    
    $scope.fetchWaterHeader = function() {
      	 $http.get('/hb/大家电/热水器?size=' + $scope.size).success(function(waterHeaders){
               $scope.handbook.push({name:"热水器", subType: waterHeaders});
           });
   	}   
    
    $scope.fetchWarterCleaner = function() {
      	 $http.get('/hb/大家电/净水器?size=' + $scope.size).success(function(warterCleaners){
               $scope.handbook.push({name:"净水器", subType: warterCleaners});
           });
   	}   
    
    $scope.fetchAirCleaner = function() {
      	 $http.get('/hb/大家电/空气净化器?size=' + $scope.size).success(function(airCleaners){
               $scope.handbook.push({name:"空气净化器", subType: airCleaners});
         });
   	}   
    
    $scope.search = function() {
      	window.location = "/search?type=" + $scope.type + "&key=" + $scope.key;
   	} 
    
    $scope.changeSearchType = function(type) {
    	 $scope.type = type;
   	}  
    
    $scope.fetchMenu();
    $scope.fetchTV(); 
    $scope.fetchRefrigerator();
    $scope.fetchAirCondition();  
    $scope.fetchWaterMahine();  
    $scope.fetchWaterHeader();  
    $scope.fetchWarterCleaner();  
    $scope.fetchAirCleaner();  
};