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
             $scope.fetchFavorite();
       });
 	}  
    
    $scope.fetchHandbookService = function(brand) {
   	 $http.get('/hbs/' + brand).success(function(services){
            $scope.services = services;
      });
	}
    
    $scope.addFavorite = function(uid, sub){
		if (uid){
			if (sub.favor){
				$http.delete('/favor/'+uid+'/' + sub.id).success(function() {
					sub.favor = false;
		        });
			}else{
				$http.post('/favor/'+uid+'/' + sub.id, {}).success(function() {
					sub.favor = true;
		        });
			}
    	}else{
    		window.location = "/signin";
    	}
	}
    
    $scope.fetchFavorite = function() {
    	if ($scope.user.id){
    		$http.get('/favor/' + $scope.user.id).success(function(favor){
    			angular.forEach(favor, function (f) {
        			if ($scope.handbook.id == f.handBook.id){
        				$scope.handbook.favor = true;
        			}
                });
    		});
    	}
 	}
    
    $scope.changeMenu = function(type, count) {
    	window.location = "/appliance?subtype="+type +"&count="+count;
  	}
    
    $scope.fetchMenu();
    $scope.parseParams();
    $scope.fetchHandbook($scope.id);
});