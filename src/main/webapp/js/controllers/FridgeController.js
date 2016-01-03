'use strict';

/**
 * FridgeController
 * @constructor
 */
var FridgeController = function($scope, $http, $location) {
	
	$scope.menu = {};
	$scope.subTypes = {};
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
    
    
    $scope.fetchSubType = function(subtype) {
     	 $http.get('/hb/大家电/'+subtype+'?size=' + $scope.size).success(function(subTypes){
              $scope.subTypes = subTypes;
          });
  	} 
    
    $scope.changeSubType = function(type) {
    	$http.get('/hb/大家电/'+type+'?size=' + $scope.size).success(function(subTypes){
            $scope.subTypes = subTypes;
            $scope.params.subtype = type;
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
    $scope.fetchSubType($scope.params.subtype); 
};