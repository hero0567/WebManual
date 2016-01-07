'use strict';

app.factory('loginService', ['$http', function($http) {

	$scope.user = {};
	
	function setUser(user){
		$scope.user = user;
	}
	
	function getUser(user){
		return $scope.user;
	}
	
	return {
		setUser: setUser
		getUser: getUser
	}
}]);
 


