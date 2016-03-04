'use strict';

/**
 * YellowPageController
 * @constructor
 */

app.controller("YellowPageController", function($scope, $http, $location, $window) {
	$('#brandsData-loading').removeClass('d-n'); 
	$('#brands-list').addClass('d-n');
	
    $scope.brands = {};
    $scope.count = 0;
    
    $scope.send = function(){	
		$http.get('/b').success(function(results) {  
			$scope.brands = results;
        }); 
		setTimeout(function(){
			$('#brandsData-loading').addClass('d-n');
			$('#brands-list').removeClass('d-n');
			$('#brands-list').listnav({
			initLetter: 'all'
		});},2000)
    }; 
    
    $scope.count = function(){	
		$http.get('/b/count').success(function(count) {  
			$scope.count = count;
        }); 
    }; 
    
    $scope.send();
    $scope.count();
});
