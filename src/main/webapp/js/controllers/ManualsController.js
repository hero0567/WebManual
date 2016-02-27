'use strict';

/**
 * ManualsController
 * @constructor
 */
 
app.controller('ManualsController', function ($scope, $window) {
  $scope.tabs = [
    { title:'国内品牌',
    	content:[ { "brandName":"Haier" , "manualUrl":"/#", "logo": "../../img/brands/haier.jpg" }, { "brandName":"Midea" , "manualUrl":"/#", "logo": "../../img/brands/midea.jpg" }]
    },
    { title:'国际品牌', 
    	content:[ { "brandName":"SAMSUNG" , "manualUrl":"/#", "logo": "../../img/brands/samsung.jpg" }, { "brandName":"Philips" , "manualUrl":"/#", "logo": "../../img/brands/philips.jpg" }] 
	}
  ];

});
 