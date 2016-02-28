'use strict';

/**
 * IndexController
 * @constructor
 */

angular.module('app').controller('IndexController',function($scope,$window){
	$scope.productTypes=[{
		'name':'大家电', 'subTypesAmount':'21', 'subTypes':[{'subname':'电视', 'amount':'2001', 'url':'/tv'}, {'subname':'冰箱', 'amount':'2005', 'url':'/fridge'}]
	},
	{
		'name':'生活电器', 'subTypesAmount':'21', 'subTypes':[{'subname':'电视', 'amount':'2001', 'url':'/tv'}, {'subname':'冰箱', 'amount':'2005', 'url':'/tv'}]
	},
	{
		'name':'厨卫电器', 'subTypesAmount':'21', 'subTypes':[{'subname':'电视', 'amount':'2001', 'url':'/tv'}, {'subname':'冰箱', 'amount':'2005', 'url':'/tv'}]
	},
	{
		'name':'个人护理', 'subTypesAmount':'21', 'subTypes':[{'subname':'电视', 'amount':'2001', 'url':'/tv'}, {'subname':'冰箱', 'amount':'2005', 'url':'/tv'}]
	}];
	
	$scope.brands=[{
		'name':'国内品牌', 'subBrandsAmount':'21', 'subBrands':[{'brandname':'海尔', 'amount':'2001', 'logo':'../../img/brands/haier.jpg', 'url':'/brands'}, {'brandname':'Midea', 'amount':'2001', "logo": "../../img/brands/midea.jpg", 'url':'/brands'}]
	},
	{
		'name':'国际品牌', 'subBrandsAmount':'21', 'subBrands':[{'brandname':'SAMSUNG', 'amount':'2001', 'logo':'../../img/brands/samsung.jpg', 'url':'/brands'}, {'brandname':'Philips', 'amount':'2001', "logo": "../../img/brands/philips.jpg", 'url':'/brands'}]
	}];
	
})