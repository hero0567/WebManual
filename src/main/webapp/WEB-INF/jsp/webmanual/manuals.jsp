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
	<title>说明书大全 ｜ 乐道说明书</title>
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="./img/favicon.png" />
	<link rel="apple-touch-icon-precomposed" href="./img/favicon.png" />
	
	<meta name="Keywords" content=" " />
	<meta name="Description" content=" " />
	
	<link rel="stylesheet" type="text/css" href="css/common/fontawesome.css" />
	<link rel="stylesheet" type="text/css" href="css/common/site.css" />
	<link rel="stylesheet" type="text/css" href="css/pages/manuals.css" />

	<script src="js/lib/others/modernizr.js"></script>
	<script>
	  window.site_url = 'https://92shuomingshu.com/';
	</script>  
	 
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/lib/others/jquery-1.5.1.js"></script>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/lib/others/ie10-viewport-bug-workaround.js"></script>
     
    <script src="js/lib/angularjs_bootstrap/angular.js"></script>
    <script src="js/lib/angularjs_bootstrap/angular-animate.js"></script>
    <script src="js/lib/angularjs_bootstrap/ui-bootstrap-tpls-1.2.0.js"></script>  
    
    <script src="js/lib/angular/angular-cookies.min.js"></script>
    
    <script src="js/app.js"></script>
	<script src="js/controllers/ManualsController.js"></script>
	<script src="js/service/UserService.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body id="manuals" ng-app="app" ng-controller="ManualsController">  
	<div class="d-n">
		<img src="./img/favicon.png" />
	</div> 
  	<!--[if lt IE 10]>
        <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]--> 
	
		<!-- Header -->
		<%@ include file="../common/header.jsp" %>	
		<main>	  
			<div class="ledao-container">
				<!-- 类别 -->
				<section id="ledao-manualtypes">
					<div class="row">
						<h3>品类细分</h3>
					</div>
					<div class="row">
						<div class="col-lg-3 col-md-3 col-sm-12 splide">
							<h4>大家电</h4>
							<ul>
								<li><a href="/tv">电视</a></li>
		                        <li><a href="/fridge">冰箱</a></li>
		                        <li><a href="/aircondition">空调</a></li>
		                        <li><a href="/washer">洗衣机</a></li>
		                        <li><a href="/waterheating">热水器</a></li>
							</ul>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-12 splide">
							<h4>生活家电</h4>
							<ul>
								<li><a href="/airpurifier">空气净化器</a></li>
		                        <li><a href="/waterpurifier">净水器</a></li>
		                        <li><a href="/waterdispenser">饮水机</a></li>
		                        <li><a href="/humidifier">加湿器</a></li>
		                        <li><a href="/electricheater">电暖器</a></li>
		                        <li><a href="/garmentsteamer">挂烫机</a></li>
							</ul>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-12 splide">
							<h4>厨卫家电</h4>
							<ul>
								<li><a href="/electriccooker">电饭煲</a></li>
		                        <li><a href="/microwaveoven">微波炉</a></li>
		                        <li><a href="/beanjuicemaker">豆浆机</a></li>
		                        <li><a href="/juicermaker">榨汁机</a></li>
		                        <li><a href="/electrickettle">电水壶</a></li>
							</ul>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-12 ">
							<h4>个人护理</h4>
							<ul>
								<li><a href="/razor">剃须刀</a></li>
		                        <li><a href="/shaver">剃毛器</a></li>
		                        <li><a href="/hairdryer">电吹风</a></li>
		                        <li><a href="/haircut">理发器</a></li>
		                        <li><a href="/electrictoothbrush">电动牙刷</a></li>
							</ul>
						</div>
					</div>
				</section>
				
				<!-- 品牌 -->
				<section id="ledao-brands">
					<div class="row">
						<h3>品牌细分</h3>
					</div>
					<div class="row">
						<div class="brands-nation col-lg-6 col-md-6 col-sm-12" ng-repeat="tab in tabs" >
							<h4 ng-bind="tab.title"></h4>
							<ul class="brands">
								<li ng-repeat="brand in tab.content"><a href="{{brand.manualUrl}}" ><img src="{{brand.logo}}"/></a></li>
							</ul>
						</div>
						 
						<!-- 注视掉的部分为可正常工作的Angularjs 和 bootstrap的tab -->
						<!--  
						 <uib-tabset active="active">
						    <uib-tab index="$index + 1" ng-repeat="tab in tabs" heading="{{tab.title}}" active="tab.active" disable="tab.disabled">
						      <ul class="brands">
						      	<li ng-repeat="brand in tab.content"><a href="{{brand.manualUrl}}" ><img src="{{brand.logo}}"/></a></li>
						      </ul>
						    </uib-tab>
						     
						  </uib-tabset> -->
					</div>			
				</section>
			</div>
			  
	 	</main> 
	 
		<!-- Footer -->
		<%@ include file="../common/footer.jsp" %>
</body>
</html>