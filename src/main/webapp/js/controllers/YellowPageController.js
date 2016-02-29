'use strict';

/**
 * YellowPageController
 * @constructor
 */

app.controller("YellowPageController", function($scope, $http, $location, $window) {
     
    $scope.brands = {};
    
    $scope.send = function(){	
		$http.get('/b').success(function(results) {  
			$scope.brands = results;
        }); 
		setTimeout(function(){$('#brands-list').listnav({
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
