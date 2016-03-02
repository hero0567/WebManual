'use strict';

/**
 * IndexController
 * @constructor
 */

app.controller("HeaderController", function($scope, $http, $cookieStore) {	
	
	$scope.codition = ['全部类型', '大家电', '生活电器', '厨卫电器', '个人护理']
	$scope.sc = "全部类型";
		
	$scope.addBookMark = function() {
		if (document.all){
			window.external.addFavorite('http://www.92shuomingshu.com','92shuomingshu');
		}
		else if (angular.isFunction(window.sidebar.addPanel)){
			window.sidebar.addPanel('92shuomingshu', 'http://www.92shuomingshu.com', "");
		}
	}
	
	$scope.changeCondition = function(sc) {
		$scope.sc = sc;
   	} 
	
	$scope.search = function() {
      	window.location = "/search?key=" + $scope.key;
   	} 
		
	$scope.logout = function() {
		$cookieStore.remove("user");
		window.location = "/logout";
	}	
});