'use strict';

/**
 * DetailsController
 * @constructor
 */
app.controller("DetailsController", function($scope, $http, $location, $window, userService) {
	
	$scope.menu = {};
	$scope.handbook = {};
	$scope.params = {};
	$scope.brandInfo = {};
	$scope.id = "";
	$scope.imageUrl = "";
	$scope.error = {captcha :false};
    
	userService.initUser();
	$scope.user = userService.getUser();
	
	$scope.parseParams = function(){
		var paramHash = userService.parseParams(window.location.search)
    	$scope.id = paramHash.id;
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
   	 $http.get('/b/' + brand).success(function(brandInfo){
            $scope.brandInfo = brandInfo;
      });
	}
    
    $scope.addFavorite = function(uid, sub){
    	userService.addFavorite(uid, sub);
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
    
    $scope.readonline = function(handbook){
    	 $window.location="/pdfonline?file="+handbook.url;
    }
    
    $scope.changeMenu = function(type, count) {
    	window.location = "/appliance?subtype="+type +"&count="+count;
  	}
    
    $scope.checkSecCode = function(){
		$http.get('/sec/img/check?code=' + $scope.user.captcha).success(function(){
			$scope.error.captcha = false;
	    	$http.put('/hb/' + $scope.id);
	    	window.location = $scope.handbook.url;
	    	
        }).error(function() {
        	$scope.error.captcha = true;
        });
	}
    
    $scope.download = function() {    	
    	$scope.imageUrl = "/sec/img";
    	$('#custom-layer').removeClass('hide');
  	}
    $scope.cancel = function(){
    	$('#custom-layer').addClass('hide');
    	$scope.imageUrl = "";
    }
    
    $scope.changeCaptcha = function(){
		$scope.imageUrl = "/sec/img?rnd=" + Math.random();	 
	}
    
//    $scope.fetchMenu();
    $scope.parseParams();
    $scope.fetchHandbook($scope.id);
});