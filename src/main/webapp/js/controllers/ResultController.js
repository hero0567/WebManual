'use strict';

/**
 * ResultController
 * @constructor
 */
app.controller("ResultController", function($scope, $http, $location, $window, userService) {
	
	$scope.menu = {};
	$scope.results = {};
	$scope.topList = {};
	$scope.brandGroup = {};
    $scope.params = {};
    // pn = 当前第几页;ppn=往后翻了几个下一页;size = 每页显示的数量 ;ps=显示几个选择页面的按钮;fp = 首页是否显示;pre = 上一页是否显示 ; nex = 下一页是否显示 ; ep = 尾页是否显示 
    $scope.page = {	pn:0, 
		    		ppn:0, 
		    		size:10, 
		    		ps:5, 
		    		pre : false, 
		    		next: false, 
		    		subtype : "",
		    		total:0 };
    $scope.ps = [1,2,3,4,5];
    
    $scope.key = "";
    $scope.count = 0;
    $scope.currentType = "全部";
    $scope.currentSubType = "全部";
    $scope.brand = "全部";
    $scope.currentTime = "全部";
    
    userService.initUser();
	$scope.user = userService.getUser();
	$scope.timeline = userService.getTimeline();
        
    $scope.parseParams = function(){
    	var paramHash = userService.parseParams(window.location.search)
    	$scope.key = paramHash.key;
    }    
    
    $scope.fetchMenu = function() {
      	 $http.get('/menu').success(function(menu){
               $scope.menu = menu;
         });
   	}  
    
    $scope.fetchTopList = function(key) {
    	$http.get('/c/g/st', {params: {"key": key}}).success(function(topList){
     		$scope.topList = topList;
     		var count = 0;
     		angular.forEach(topList, function (m) {
     			count += m.count; 
        	});
     		$scope.count = count;
     		$scope.page.total = count;
     		$scope.topList.unshift({"count":count, subType: "全部"});
     		$scope.changePageNavi();
        });
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
    	$scope.searchSubType();
  	} 
    
    $scope.goPrePage = function(pn) {
    	$scope.page.ppn--;
    	$scope.page.pn = $scope.page.ppn * $scope.page.ps;
    	$scope.searchSubType();
    	$scope.changePageNavi();
  	} 
    $scope.goFirstPage = function(pn) {
    	$scope.resetPageNavi()
    	$scope.searchSubType();
  	}
    
    $scope.goNextPage = function(pn) {
    	$scope.page.ppn++;
    	$scope.page.pn = $scope.page.ppn * $scope.page.ps;
    	$scope.searchSubType();
    	$scope.changePageNavi();
  	} 
    $scope.goLastPage = function(pn) {
    	$scope.page.ppn = parseInt($scope.page.total / ($scope.page.size * $scope.page.ps));
    	$scope.page.pn = $scope.page.ppn * $scope.page.ps;
    	$scope.searchSubType();
    	$scope.changePageNavi();
  	} 
    
    $scope.searchSubType = function() {    	
		$http.get('/s', {params: {"key":$scope.key,"subtype": $scope.currentSubType, "brand": $scope.brand, 
					ct: $scope.currentTime, pn:$scope.page.pn, size:$scope.page.size}}).success(function(results) {  
       	 	$scope.results = results;
       	 	$scope.fetchFavorite();
        }); 
 	} 
    
    
    $scope.fetchBrandGroup = function() {
    	$http.get('/c/g/b', {params: {"name": $scope.params.key,"subtype": $scope.currentSubType, "brand": $scope.brand, ct: $scope.currentTime}}).success(function(brandGroup){
     		$scope.brandGroup = brandGroup
     		var count = 0;
     		angular.forEach(brandGroup, function (m) {
     			count += m.count; 
        	});
     		$scope.brandGroup.unshift({"count":count, subType: "全部"});     		
     		$scope.page.total = count;
        	$scope.resetPageNavi();
        });
  	}
    
    $scope.changeSubType = function(type, subtype, count) {
        $scope.page.total = count;    
        $scope.brand = "全部";
        $scope.currentTime = "全部";
        $scope.currentType = type;
        $scope.currentSubType = subtype;
    	$scope.resetPageNavi();
    	$scope.searchSubType();
    	$scope.fetchBrandGroup();
  	} 
    
    $scope.changeBrandGroup = function(brand, count) {
    	$scope.brand = brand;  
    	$scope.page.total = count;
    	$scope.resetPageNavi();
    	$scope.searchSubType();
    	if ($scope.currentTime != "全部"){
    		$scope.fetchBrandGroup();
    	}
  	}
    
    $scope.changeTime = function(t) {
    	$scope.currentTime = t;   
    	$scope.searchSubType();
       	$scope.fetchBrandGroup();
  	}
    
    $scope.changeMenu = function(type, count) {
    	window.location = "/appliance?subtype="+type +"&count="+count;
  	} 
    
    $scope.search = function() {
      	window.location = "/result?key=" + $scope.key;
   	}
    
    $scope.addFavorite = function(uid, sub){
    	userService.addFavorite(uid, sub);
	}
    
    $scope.fetchFavorite = function() {
    	if ($scope.user.id){
    		$http.get('/favor/' + $scope.user.id).success(function(favor){
    			angular.forEach(favor, function (f) {
                	angular.forEach($scope.results, function (type) {
            			if (type.id == f.handBook.id){
            				type.favor = true;
            			}
                    });
                });
    		});
    	}
 	}
    
    $scope.parseParams();
//    $scope.fetchMenu();
    $scope.fetchTopList($scope.params.key);     
    $scope.fetchBrandGroup();
    $scope.searchSubType(); 
    
});