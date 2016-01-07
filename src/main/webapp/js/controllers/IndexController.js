'use strict';

/**
 * IndexController
 * @constructor
 */

app.controller("IndexController", function($scope, $http, $location, loginService) {
	
	$scope.menu = {};
    $scope.handbook = [];
    
    $scope.size = 2;    
    $scope.type = "全部";
    $scope.key = "";
        
    $scope.fetchMenu = function() {
     	 $http.get('/menu').success(function(menu){
              $scope.menu = menu;
              $scope.fetchSubTypes();
        });
  	}  
    
    $scope.fetchSubTypes = function() {
    	angular.forEach($scope.menu, function (m) {
    		$http.get('/hb/大家电/'+m.subType+'?size=' + $scope.size).success(function(airCleaners){
                $scope.handbook.push({name:m.subType, count:m.count, subType: airCleaners});                
    		});
    	});    	
  	} 
    
    $scope.changeMenu = function(type, count) {
    	window.location = "/fridge?subtype="+type +"&count="+count;
  	} 
    
    $scope.search = function() {
      	window.location = "/result?key=" + $scope.key;
   	} 
    
    //Hide angularjs tag flicker
	$scope.hideFlicker = function(){
		if($('body').hasClass('d-n'))$('body').removeClass('d-n'); 
	}
	
	//$scope.hideFlicker();
    $scope.fetchMenu();
});