'use strict';

/**
 * YellowPageController
 * @constructor
 */

app.controller("YellowPageController", function($scope, $http, $location, $window) {
	$('#brandsData-loading').removeClass('d-n'); 
	$('#brands-list').addClass('d-n');
	
    $scope.brands = {};
    
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
    
    $scope.send();
});
/*
app.directive('listnav', function($timeout){
    return {
        restrict: 'A',
        replace: false,
        link: function($scope, elem, attrs){            
            
            $scope.loadNav = function(){
                $timeout(function(){
                    $(elem).listnav();
                });
            };
            $scope.loadNav();
        }
    };
});*/
