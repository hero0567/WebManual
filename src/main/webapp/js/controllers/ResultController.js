'use strict';

/**
 * ResultController
 * @constructor
 */
var ResultController = function($scope, $http, $location) {
	
	$scope.menu = {};
	$scope.results = {};
	$scope.topList = {};
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
    $scope.currentSubType = "全部";
        
    $scope.parseParams = function(){
    	var paramString = window.location.search;
    	var params = paramString.substr(1).split('&');  

    	params.forEach(function(param){
    		var kv = param.split('=');  
    		if (kv.length = 2){
    			$scope.params[kv[0]] = decodeURI(kv[1]);
    		}
    	});
    	$scope.key = $scope.params.key;
    }    
    
    $scope.fetchMenu = function() {
      	 $http.get('/menu').success(function(menu){
               $scope.menu = menu;
         });
   	}  
    
    $scope.fetchTopList = function(key) {
    	$http.get('/c/s', {params: {"key": key, "group":true}}).success(function(topList){
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
    	$scope.searchSubType($scope.key);
  	} 
    
    $scope.goPrePage = function(pn) {
    	$scope.page.ppn--;
    	$scope.page.pn = $scope.page.ppn * $scope.page.ps;
    	$scope.searchSubType($scope.key);
    	$scope.changePageNavi();
  	} 
    $scope.goFirstPage = function(pn) {
    	$scope.resetPageNavi()
    	$scope.searchSubType($scope.key);
  	}
    
    $scope.goNextPage = function(pn) {
    	$scope.page.ppn++;
    	$scope.page.pn = $scope.page.ppn * $scope.page.ps;
    	$scope.searchSubType($scope.key);
    	$scope.changePageNavi();
  	} 
    $scope.goLastPage = function(pn) {
    	$scope.page.ppn = parseInt($scope.page.total / ($scope.page.size * $scope.page.ps));
    	$scope.page.pn = $scope.page.ppn * $scope.page.ps;
    	$scope.searchSubType($scope.key);
    	$scope.changePageNavi();
  	} 
    
    $scope.searchSubType = function(key, type) {    	
    	if (angular.isDefined(type)){
    		$http.get('/s/大家电/'+type, {params: {"key":key, pn:$scope.page.pn, size:$scope.page.size}}).success(function(results) {  
           	 	$scope.results = results;
            });  
    	}else{
    		$http.get('/s', {params: {"key":key, pn:$scope.page.pn, size:$scope.page.size}}).success(function(results) {  
           	 	$scope.results = results;
            });  
    	}
 	} 
    
    $scope.changeSubType = function(type, count) {
        $scope.page.total = count;    
        $scope.currentSubType = type;
    	$scope.resetPageNavi();
    	if (type == "全部"){
    		$scope.searchSubType($scope.key);
    	}else{
    		$scope.searchSubType($scope.key, type);
    	}
  	} 
    
    $scope.search = function() {
      	window.location = "/search?key=" + $scope.key;
   	} 
    
    $scope.parseParams();
    $scope.fetchMenu();
    $scope.fetchTopList($scope.params.key);        
    $scope.searchSubType($scope.params.key); 
};