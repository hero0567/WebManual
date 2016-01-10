'use strict';

app.factory('favoriteService', ['$http', function($http) {
		
	function addFavorite(uid, hbid){
		$http.post('/favor/'+uid+'/' + hbid, app).success(function() {
    		
        }).error(function() {
            $scope.msg = 'Could not add a new application';
        });
	}
	
	
	return {
		addFavorite: addFavorite
	}
}]);
 


