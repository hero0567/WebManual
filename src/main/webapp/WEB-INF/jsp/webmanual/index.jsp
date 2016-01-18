<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html id="signup-page" class="page-signup page-signup--standard">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
	<title>首页 ｜ 92说明书</title>
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="./img/favicon.png" />
	<link rel="apple-touch-icon-precomposed" href="./img/favicon.png" />
	
	<meta name="Keywords" content=" " />
	<meta name="Description" content=" " />
	
	<link rel="stylesheet" type="text/css" href="css/pages/index.css" />
	<link rel="stylesheet" type="text/css" href="css/common/fontawesome.css" />
	
	<script src="js/lib/others/modernizr.js"></script>
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
    <script src="js/lib/angular/angular.js"></script>
    <script src="js/lib/angular/angular-cookies.min.js"></script>
    <script src="js/app.js"></script>
	<script src="js/controllers/IndexController.js"></script>
	<script src="js/service/UserService.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body ng-app="app" ng-controller="IndexController" class="">  
	<div class="d-n">
		<img src="./img/favicon.png" />
	</div> 
  	<!--[if lt IE 10]>
        <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]--> 
	
		<!-- Header -->
		<%@ include file="../common/header.jsp" %>
		
		<!-- Banner -->
		<div class="container white-block margin-bottom-20 padding-0">
			<a href="https://www.itjuzi.com/2015" target="_blank">
				<img class="cutom-banner" src="https://www.itjuzi.com/assets/front/tmp_banner/baogao.png">
			</a>
		</div>
		
		<!-- Section -->
		<div class="container white-block margin-bottom-20" ng-repeat="book in handbook | orderBy: 'sequence'">
			<div class="custom-appliance-head row" >
				<h4><i class="fa fa-th"></i> <span ng-bind="book.name"></span></h4>
			</div>
			
			<div class="row">
				<div class="col-lg-9 col-md-9 col-sm-9">
					<section>
						<div class="custom-section-head">
							<ul class="custom-tabs f-l">
								<li class="tab-head-view-most-manual-{{book.name}} on"><i class="fa fa-fire"></i> 浏览最多说明书</li>
								<li class="tab-head-view-most-brand-{{book.name}}"><i class="fa fa-globe"></i> 浏览最多品牌</li>
							</ul>
							<a class="custom-section-more f-r" href="/appliance?subtype={{book.name}}&count={{book.count}}">查看更多 <i class="fa fa-chevron-right"></i></a>
						</div>
						<div class="custom-section-body">
							<div id="tab-body-view-most-manual" class="custom-tabs-tab">
								<table class="table custom-appliance-table">
									<tr>
										<th class="cell maincell"> <span class="t-small">名称</span> </th> 
										<th class="cell brand"> 品牌 </th> 
										<th class="cell version"> 型号 </th> 
										<th class="cell date"> 上市时间 </th> 
										<th class="cell action"> 关注 </th>
									</tr>
									<tr class="border-gray-lower-dashed" ng-repeat="sub in book.subType">
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
							</div>
							<div id="tab-body-view-most-brand" class="custom-tabs-tab">
								
							</div>
						</div>
					</section>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-3">
					<section>
						<div class="custom-section-head">
							<a href="" class="custom-section-title f-l"><i class="fa fa-cog"></i> 维修保养常识</a>
							<a href="" class="custom-section-more f-r">查看更多 <i class="fa fa-chevron-right"></i></a>
						</div>
						<div class="custom-section-body">
						</div>
					</section>
				</div>
			</div>
		</div>
		
		<!-- Footer -->
		<%@ include file="../common/footer.jsp" %>
</body>
</html>