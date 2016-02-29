'use strict';

/**
 * IndexController
 * @constructor
 */

app.controller("IndexController", function($scope, $http, $location, $window, userService) {
		
//	$scope.menu=[{
//							'type':'大家电', 'typecount':'21', 'subtypes':[{'subtype':'电视', 'count':'2001', 'url':'/tv'}, {'subtype':'冰箱', 'count':'2005', 'url':'/fridge'}]
//						},
//						{
//							'type':'生活电器', 'typecount':'21', 'subtypes':[{'subtype':'电视', 'count':'2001', 'url':'/tv'}, {'subtype':'冰箱', 'count':'2005', 'url':'/tv'}]
//						},
//						{
//							'type':'厨卫电器', 'typecount':'21', 'subtypes':[{'subtype':'电视', 'count':'2001', 'url':'/tv'}, {'subtype':'冰箱', 'count':'2005', 'url':'/tv'}]
//						},
//						{
//							'type':'个人护理', 'typecount':'21', 'subtypes':[{'subtype':'电视', 'count':'2001', 'url':'/tv'}, {'subtype':'冰箱', 'count':'2005', 'url':'/tv'}]
//						}];
//						
						$scope.brands=[{
							'name':'国内品牌', 'subBrandsAmount':'21', 'subBrands':[{'brandname':'海尔', 'amount':'2001', 'logo':'../../img/brands/haier.jpg', 'url':'/brands'}, {'brandname':'Midea', 'amount':'2001', "logo": "../../img/brands/midea.jpg", 'url':'/brands'}]
						},
						{
							'name':'国际品牌', 'subBrandsAmount':'21', 'subBrands':[{'brandname':'SAMSUNG', 'amount':'2001', 'logo':'../../img/brands/samsung.jpg', 'url':'/brands'}, {'brandname':'Philips', 'amount':'2001', "logo": "../../img/brands/philips.jpg", 'url':'/brands'}]
						}];
	
	$scope.typemenu = {};  
	$scope.brandmenu = {};
    
    userService.initUser();
	$scope.user = userService.getUser();
    
    $scope.fetchTypeMenu = function() {
     	 $http.get('/menu/type').success(function(menu){
              $scope.typemenu = menu;
        });
  	}  
    
    $scope.fetchBrandMenu = function() {
    	 $http.get('/menu/brand').success(function(menu){
             $scope.brandmenu = menu;
       });
 	} 
    
    $scope.changeMenu = function(type, subtype, count) {
    	window.location = "/appliance?type="+type +"&subtype="+subtype +"&count="+count;
  	}  
    
    $scope.fetchTypeMenu();
    $scope.fetchBrandMenu();
});