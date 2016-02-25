'use strict';

/**
 * IndexController
 * @constructor
 */

app.controller("IndexController", function($scope, $http, $location, $window, userService) {
		
	$scope.menu = {};    
    
    userService.initUser();
	$scope.user = userService.getUser();
    
    $scope.fetchMenu = function() {
     	 $http.get('/menu/header').success(function(menu){
              $scope.menu = menu;
              $("#ledao_nav").slide({ 
          		titCell:".cate_nav li",
          		mainCell:".ledao_cat_content",
          		autoPlay:false,
          		interTime:7400,
          		delayTime:100 
          	});
        });
  	}  
    
    $scope.changeMenu = function(type, subtype, count) {
    	window.location = "/appliance?type="+type +"&subtype="+subtype +"&count="+count;
  	}  
    
    $scope.fetchMenu();
});