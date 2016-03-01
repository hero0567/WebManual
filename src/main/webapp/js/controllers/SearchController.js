'use strict';

/**
 * SearchController
 * @constructor
 */

app.controller("SearchController", function($scope, $http, $location, $window, userService) {
		
    
	$scope.total = 0;
	$scope.count = 0;
	$scope.brands = [];
	$scope.subtypes = [];
	$scope.manuals = {};
	$scope.version = "";
	$scope.key = "111";
	
	$scope.timeline = [{name: '2012年之前', checked : false},
	                 {name: '2013', checked : false},
	                 {name: '2014', checked : false},
	                 {name: '2015', checked : false}];
	
	// pn = 当前第几页;ppn=往后翻了几个下一页;size = 每页显示的数量 ;ps=显示几个选择页面的按钮;
    // fp = 首页是否显示;pre = 上一页是否显示 ; nex = 下一页是否显示 ; ep = 尾页是否显示 
    $scope.page = {	pn:0, 
		    		ppn:0, 
		    		size:20, 
		    		ps:5, 
		    		psinx : [1,2,3,4,5],
		    		pre : false, 
		    		next: false, 
		    		total:0 };
    
    userService.initUser();
	$scope.user = userService.getUser();
	
	$scope.parseParams = function(){
    	var paramHash = userService.parseParams(window.location.search)
    	$scope.key = paramHash.key;
    }   
	
    $scope.changePageNavi = function() {
    	$scope.page.pre = $scope.page.ppn == 0;
    	$scope.page.next = ($scope.page.total / ($scope.page.size * $scope.page.ps) > $scope.page.ppn + 1);
    }
    
    $scope.resetPageNavi = function() {
    	$scope.page.pn = 0
    	$scope.page.ppn = 0;
    	$scope.changePageNavi();
    }
    
    $scope.goPage = function(pn) {
    	$scope.page.pn = pn - 1;
    	$scope.fetchManual();
  	} 
    
    $scope.goPrePage = function(pn) {
    	$scope.page.ppn--;
    	$scope.page.pn = $scope.page.ppn * $scope.page.ps;
    	$scope.fetchManual();
    	$scope.changePageNavi();
  	} 
    $scope.goFirstPage = function(pn) {
    	$scope.resetPageNavi()
    	$scope.fetchManual();
  	}
    
    $scope.goNextPage = function(pn) {
    	$scope.page.ppn++;
    	$scope.page.pn = $scope.page.ppn * $scope.page.ps;
    	$scope.fetchManual();
    	$scope.changePageNavi();
  	} 
    $scope.goLastPage = function(pn) {
    	$scope.page.ppn = parseInt($scope.page.total / ($scope.page.size * $scope.page.ps));
    	$scope.page.pn = $scope.page.ppn * $scope.page.ps;
    	$scope.fetchManual();
    	$scope.changePageNavi();
  	} 
    
	
    $scope.check = function(obj) {
    	obj.checked = !obj.checked ;
  	}  
    
    
    $scope.clearBrand = function() {
    	angular.forEach($scope.subtypes, function (brand) {
    		brand.checked = false; 
    	});
  	} 
    
    $scope.clearSubType = function() {
    	angular.forEach($scope.brands, function (brand) {
    		brand.checked = false; 
    	});
  	} 
    
    $scope.clearTimeline = function() {
    	angular.forEach($scope.timeline, function (time) {
    		time.checked = false; 
    	});
  	} 
    
    $scope.clearAll = function() {
    	$scope.clearBrand();
    	$scope.clearSubType();
    	$scope.clearTimeline();
    	$scope.version = "";
  	} 
        
    $scope.fetchSubType = function(){	
		$http.get('/s/st?key=' + $scope.key ).success(function(subtypes) {  
			angular.forEach(subtypes, function (sub) {
				$scope.subtypes.push({name : sub, checked : false});
	    	});
        });    
    }; 
    
    $scope.fetchBrand = function(){	
		$http.get('/s/b?key=' + $scope.key).success(function(brands) {  
			angular.forEach(brands, function (b) {
				$scope.brands.push({name : b, checked : false});
	    	});
        });    
    }; 
    
    $scope.fetchBrandCount = function(){	
		$http.get('/c/k?key=' + $scope.key).success(function(total) {  
			$scope.total = total;
			$scope.page.total = total;
        });    
    }; 
    
    $scope.search = function(){	
    	$scope.resetPageNavi();
    	$scope.fetchManual();
    	
    }; 
    
    $scope.fetchManual = function(){	
    	var brands = "";
    	var subtypes = "";
    	var time = "";
    	angular.forEach($scope.brands, function (b) {
			if (b.checked == true){
				brands = b.name +"," + brands;
			}
    	});
    	angular.forEach($scope.subtypes, function (b) {
			if (b.checked == true){
				subtypes = b.name +"," + subtypes;
			}
    	});
    	angular.forEach($scope.timeline, function (t) {
			if (t.checked == true){
				time = t.name +"," + time;
			}
    	});
    	
    	   	
    	$http.get('/s/s', {params: {key : $scope.key ,brand: brands, subtype: subtypes, ct: time, version : $scope.version,
    									pn:$scope.page.pn, size:$scope.page.size}}).success(function(result){
    										
			$scope.manuals = result.item;	
			$scope.page.total = result.total;
			$scope.changePageNavi();	
        });
    	
    }; 
    
    $scope.addFavorite = function(uid, sub){
    	userService.addFavorite(uid, sub);
	}
    
    $scope.parseParams();
    $scope.fetchBrand();
    $scope.fetchSubType();
    $scope.fetchBrandCount();
    $scope.fetchManual();
    
});