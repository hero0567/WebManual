'use strict';

/**
 * ResultController
 * @constructor
 */
app.controller("FavoritesController", function($scope, $http, $location, $window, userService) {
	
	$scope.menu = {};
	$scope.results = {};
	$scope.favorList = {};
	
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
    $scope.currentSubType = "全部";
    
    userService.initUser();
	$scope.user = userService.getUser();
	    
    $scope.fetchMenu = function() {
      	 $http.get('/menu').success(function(menu){
               $scope.menu = menu;
         });
   	}  
    
    $scope.fetchFavorList = function(id) {
    	$http.get('/c/f', {params: {"id": id, "group":true}}).success(function(favorList){
     		$scope.favorList = favorList;
     		var count = 0;
     		angular.forEach(favorList, function (m) {
     			count += m.count; 
        	});
     		$scope.count = count;
     		$scope.page.total = count;
     		$scope.favorList.unshift({"count":count, subType: "全部"});
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
    	$scope.searchSubType($scope.user.id);
  	} 
    
    $scope.goPrePage = function(pn) {
    	$scope.page.ppn--;
    	$scope.page.pn = $scope.page.ppn * $scope.page.ps;
    	$scope.searchSubType($scope.user.id);
    	$scope.changePageNavi();
  	} 
    $scope.goFirstPage = function(pn) {
    	$scope.resetPageNavi()
    	$scope.searchSubType($scope.user.id);
  	}
    
    $scope.goNextPage = function(pn) {
    	$scope.page.ppn++;
    	$scope.page.pn = $scope.page.ppn * $scope.page.ps;
    	$scope.searchSubType($scope.user.id);
    	$scope.changePageNavi();
  	} 
    $scope.goLastPage = function(pn) {
    	$scope.page.ppn = parseInt($scope.page.total / ($scope.page.size * $scope.page.ps));
    	$scope.page.pn = $scope.page.ppn * $scope.page.ps;
    	$scope.searchSubType($scope.user.id);
    	$scope.changePageNavi();
  	} 
    
    $scope.searchSubType = function(id, type) {    	
    	if (angular.isDefined(type)){
    		$http.get('/favor/'+ id + '/' + type, {params: {"subType":type, pn:$scope.page.pn, size:$scope.page.size}}).success(function(results) {  
           	 	$scope.results = results;
				angular.forEach(results, function (result) {
					result.favor = true;
				});
            });  
    	}else{
    		$http.get('/favor/'+ id, {params: {pn:$scope.page.pn, size:$scope.page.size}}).success(function(results) {  
           	 	$scope.results = results;
           	 	angular.forEach(results, function (result) {
					result.favor = true;
				});
            });  
    	}
 	} 
    
    $scope.addFavorite = function(uid, sub){
    	userService.addFavorite(uid, sub);
	}   
    
    $scope.changeSubType = function(type, count) {
        $scope.page.total = count;    
        $scope.currentSubType = type;
    	$scope.resetPageNavi();
    	if (type == "全部"){
    		$scope.searchSubType($scope.user.id);
    	}else{
    		$scope.searchSubType($scope.user.id, type);
    	}
  	} 
    
    $scope.changeMenu = function(type, count) {
    	window.location = "/appliance?subtype="+type +"&count="+count;
  	}
	
//    $scope.fetchMenu();
    $scope.fetchFavorList($scope.user.id);        
    $scope.searchSubType($scope.user.id); 
});