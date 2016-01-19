<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html id="signup-page" class="page-signup page-signup--standard">
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
	<title>说明书详细 ｜ 92说明书</title>
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="./img/favicon.png" />
	<link rel="apple-touch-icon-precomposed" href="./img/favicon.png" />

	<meta name="Keywords" content=" " />
	<meta name="Description" content=" " />
	
	<link rel="stylesheet" type="text/css" href="css/common/fontawesome.css" />
	<link rel="stylesheet" type="text/css" href="css/pages/appliance.css" />
	<script>
	  window.site_url = 'https://92shuomingshu.com/';
	</script>  
	 
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/lib/jquery/jquery.min.js"></script>
    <script src="js/lib/bootstrap/bootstrap.min.js"></script>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/lib/others/ie10-viewport-bug-workaround.js"></script>    
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<script src="js/lib/angular/angular.js"></script>
	<script src="js/lib/angular/angular-cookies.min.js"></script>
	<script src="js/app.js"></script>	
	<script src="js/controllers/ApplianceController.js"></script>
	<script src="js/service/UserService.js"></script>	
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body ng-app="app" ng-controller="ApplianceController" class="">
	<div class="d-n">
		<img src="./img/favicon.png" />
	</div> 
	<!--[if lt IE 10]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<div class="contentwrap">
		<%@ include file="../common/header.jsp" %>
		
		<!-- Section -->
		<div class="container margin-bottom-20">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<section class="custom-brands-filter white-block p-l-r">
						<div class="custom-section-head">
							<ul class="custom-tabs f-l">
								<li class="tab-head-view-most-manual-{{book.name}}"><i class="fa fa-fire"></i> <b>筛选</b></li>
							</ul>
						</div>
						<div class="custom-section-body">
							<div id="tab-body-view-most-manual" class="custom-tabs-tab">
								<table class="">
									<tr class="border-gray-dashed">
										<td class="custom-filter-brand">
											品牌:
										</td>
										<td>
											<ul class="custom-brands-list">
										 		<li class="custom-brand-item active">全部</li>
												<li class="custom-brand-item" ng-repeat="sub in subTypes"> 
													<a ng-href="/result?key={{sub.brand}}" ng-bind="sub.brand"></a>	
												</li>
											</ul>		
										</td>
									</tr>
									<tr>
										<td class="custom-filter-brand padding-top-15">
											时间:
										</td>
										<td class="padding-top-15">
											<ul class="custom-brands-list">
										 		<li class="custom-brand-item active">全部</li>
												<li class="custom-brand-item"> 
													<a href="">2012</a>	
												</li>
												<li class="custom-brand-item"> 
													<a href="">2013</a>	
												</li>
												<li class="custom-brand-item"> 
													<a href="">2014</a>	
												</li>
												<li class="custom-brand-item"> 
													<a href="">2015</a>	
												</li>
											</ul>		
										</td>
									</tr>
								</table>
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>
		
		<div class="container margin-bottom-20">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<section class="custom-brands-filter white-block p-l-r">
						<table class="table custom-appliance-table">
							<tr>
								<th class="cell pic"> 图片</th> 
								<th class="cell maincell"> 名称 </th> 
								<th class="cell brand"> 品牌 </th> 
								<th class="cell version"> 型号 </th> 
								<th class="cell date"> 上市时间 </th> 
								<th class="cell action"> 关注 </th>
							</tr>
							<tr class="border-gray-lower-dashed" ng-repeat="sub in subTypes">
								<td class="cell pic">
									<img ng-src="{{sub.imgUrl}}" /> 
								</td>
					            <td class="cell maincell"> &nbsp;
					            	<a ng-href="/details?id={{sub.id}}" ng-bind="sub.name"></a>  
					            </td> 
						           
					            <td class="cell brand">&nbsp;
						           	<a ng-href="/result?key={{sub.brand}}" ng-bind="sub.brand"></a> 
					            </td> 
					            <td class="cell version"> &nbsp;
						             <a href="" ng-bind="sub.version"> </a> 
					            </td> 
					            <td class="cell date"> &nbsp;
					            	<span ng-bind="sub.productDate | date:'yyyy-MM-dd'"></span> 
				            	</td>
					            <td class="cell action"> &nbsp;
					            	<a href="" ng-class="{true: 'fa fa-star', false: 'fa fa-star-o'}[sub.favor == true]" ng-click="addFavorite(user.id, sub)"></a>
				            	</td>
							</tr>
						</table>
						<!-- block 分页区 -->
						<div>
							<div class="custom-pagination">
								<a href="#" ng-hide="page.pre" ng-click="goFirstPage()">首页</a> 
								<a href="#" ng-hide="page.pre" ng-click="goPrePage()">上一页</a> 
								<a href="#" ng-class="{on:  pageindex + page.ppn * page.ps == page.pn + 1}" ng-repeat="pageindex in ps" 
									ng-click="goPage(pageindex + page.ppn * page.ps)" ng-show="page.total > (pageindex - 1 + page.ppn * page.ps) * page.size && page.total > page.size">{{pageindex + page.ppn * page.ps}}</a> 
								<a href="#" ng-show="page.next" ng-click="goNextPage()">下一页</a> 
								<a href="#" ng-show="page.next" ng-click="goLastPage()">尾页 </a>
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>
		
		<%@ include file="../common/footer.jsp" %>
	</div>
	<script>
	    window.site_url = 'https://92shuomingshu.com/';
	</script>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/lib/others/modernizr.js"></script>
	<script src="js/lib/jquery/jquery.min.js"></script>
	<script src="js/lib/bootstrap/bootstrap.min.js"></script>

	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="js/lib/others/ie10-viewport-bug-workaround.js"></script>
</body>
</html>