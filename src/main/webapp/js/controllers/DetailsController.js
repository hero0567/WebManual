'use strict';

/**
 * DetailsController
 * @constructor
 */
app.controller("DetailsController", function($scope, $http, $location, userService) {
	
	$scope.menu = {};
	$scope.handbook = {};
	$scope.params = {};
	$scope.services = {};
	$scope.id = "";
    
	userService.initUser();
	$scope.user = userService.getUser();
	
	$scope.parseParams = function(){
    	var paramString = window.location.search;
    	var params = paramString.substr(1).split('&'); 

    	params.forEach(function(param){
    		var kv = param.split('=');  
    		if (kv.length = 2){
    			$scope.params[kv[0]] = decodeURI(kv[1]);
    		}
    	});
    	$scope.id = $scope.params.id;
    }
	
    $scope.fetchMenu = function() {
     	 $http.get('/menu').success(function(menu){
              $scope.menu = menu;
        });
  	}  
    
    $scope.fetchHandbook = function(id) {
    	 $http.get('/hb/x/x/' + id).success(function(handbook){
             $scope.handbook = handbook;
             $scope.fetchHandbookService(handbook.brand);
       });
 	}  
    
    $scope.fetchHandbookService = function(brand) {
   	 $http.get('/hbs/' + brand).success(function(services){
            $scope.services = services;
      });
	}
    
    $scope.changeMenu = function(type, count) {
    	window.location = "/fridge?subtype="+type +"&count="+count;
  	} 
        
    //Hide angularjs tag flicker
	$scope.hideFlicker = function(){
		if($('body').hasClass('d-n'))$('body').removeClass('d-n'); 
	}
	
	//$scope.hideFlicker();
    $scope.fetchMenu();
    $scope.parseParams();
    $scope.fetchHandbook($scope.id);
});