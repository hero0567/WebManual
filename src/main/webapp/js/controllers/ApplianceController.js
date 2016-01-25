'use strict';

/**
 * ApplianceController
 * @constructor
 */
app.controller("ApplianceController", function($scope, $http, $location, $window, userService) {
	
	$scope.menu = {};
	$scope.subTypes = {};
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
    
    $scope.brand = "全部";
    $scope.currentTime = "全部";
    $scope.key = "";
    
    userService.initUser();
	$scope.user = userService.getUser();
	$scope.timeline = userService.getTimeline();
        
    $scope.parseParams = function(){
    	var paramString = window.location.search;
    	var params = paramString.substr(1).split('&');  

    	params.forEach(function(param){
    		var kv = param.split('=');  
    		if (kv.length = 2){
    			$scope.params[kv[0]] = decodeURI(kv[1]);
    		}
    	});
    	$scope.page.subtype = $scope.params.subtype;
    	$scope.page.total = $scope.params.count;
    }    
    
    $scope.fetchMenu = function() {
      	 $http.get('/menu').success(function(menu){
               $scope.menu = menu;
         });
   	}  
    
    $scope.changeMenu = function(type, count) {
    	$scope.page.subtype = type;
        $scope.page.total = count;        
    	$scope.resetPageNavi();
    	$scope.fetchSubType();
    	$scope.fetchBrandGroup();
        
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
    	$scope.fetchSubType();
  	} 
    
    $scope.goPrePage = function(pn) {
    	$scope.page.ppn--;
    	$scope.page.pn = $scope.page.ppn * $scope.page.ps;
    	$scope.fetchSubType();
    	$scope.changePageNavi();
  	} 
    $scope.goFirstPage = function(pn) {
    	$scope.resetPageNavi()
    	$scope.fetchSubType();
  	}
    
    $scope.goNextPage = function(pn) {
    	$scope.page.ppn++;
    	$scope.page.pn = $scope.page.ppn * $scope.page.ps;
    	$scope.fetchSubType();
    	$scope.changePageNavi();
  	} 
    $scope.goLastPage = function(pn) {
    	$scope.page.ppn = parseInt($scope.page.total / ($scope.page.size * $scope.page.ps));
    	$scope.page.pn = $scope.page.ppn * $scope.page.ps;
    	$scope.fetchSubType();
    	$scope.changePageNavi();
  	} 
    
    $scope.fetchSubType = function() {        
        if ($scope.brand == "全部"){
        	$http.get('/hb/大家电/'+$scope.page.subtype, {params: {pn:$scope.page.pn, size:$scope.page.size, ct: $scope.currentTime}}).success(function(subTypes) {  
           	 	$scope.subTypes = subTypes;
           	 	$scope.fetchFavorite();
            });  
    	}else{
    		$http.get('/hb/大家电/'+$scope.page.subtype, {params: {pn:$scope.page.pn, size:$scope.page.size, brand: $scope.brand, ct: $scope.currentTime}}).success(function(subTypes) {  
           	 	$scope.subTypes = subTypes;
           	 	$scope.fetchFavorite();
            });  
    	}
 	} 
    
    $scope.fetchBrandGroup = function(ct) {
    	$http.get('/c/s/st', {params: {"subtype": $scope.page.subtype, "group":true, ct: $scope.currentTime}}).success(function(brandGroup){
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
    
    $scope.changeBrandGroup = function(brand, count) {
    	$scope.brand = brand;  
    	$scope.page.total = count;
    	$scope.resetPageNavi();
    	$scope.fetchSubType();
    	if ($scope.currentTime != "全部"){
    		$scope.fetchBrandGroup(true);
    	}
  	}
    
    $scope.changeTime = function(t) {
    	$scope.currentTime = t;   
    	$scope.fetchSubType();
       	$scope.fetchBrandGroup(true);
  	}
        
    $scope.addFavorite = function(uid, sub){
    	userService.addFavorite(uid, sub);
	}
    
    $scope.fetchFavorite = function() {
    	if ($scope.user.id){
    		$http.get('/favor/' + $scope.user.id).success(function(favor){
    			angular.forEach(favor, function (f) {
                	angular.forEach($scope.subTypes, function (type) {
            			if (type.id == f.handBook.id){
            				type.favor = true;
            			}
                    });
                });
    		});
    	}
 	}
    
    $scope.parseParams();
    $scope.changePageNavi();
    $scope.fetchMenu();
    $scope.fetchBrandGroup();
    $scope.fetchSubType(); 
});