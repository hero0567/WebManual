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
	<title>空调说明书 ｜ 乐道说明书</title>
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="./img/favicon.png" />
	<link rel="apple-touch-icon-precomposed" href="./img/favicon.png" />
	
	<meta name="Keywords" content="空调说明书" />
	<meta name="Description" content="空调说明书大全，空调使用保养常识，空调官方客服电话" />
	
	<link rel="stylesheet" type="text/css" href="css/common/fontawesome.css" />
	<link rel="stylesheet" type="text/css" href="css/common/site.css" />
	<link rel="stylesheet" type="text/css" href="css/common/manuals.css" />

	<script src="js/lib/others/modernizr.js"></script>
	<script>
	  window.site_url = 'https://92shuomingshu.com/';
	</script>  
	 
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/lib/jquery/jquery.min.js"></script>

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
	<%@ include file="../common/secheader.jsp" %>
	
	<main>
		<!-- Category and Brands -->
		<div class="ledao-banners">
			<div class="ledao-container">
			</div>
		</div>
		
	
		<!-- Original sub-menu -->
		<section class="sub-menu hide">
			<div class="container">
				<div class="row border-gray-dashed"  ng-repeat="item in menu">
					<div class="col-lg-1 col-md-1 col-sm-1">
						<p class="custom-type"><span ng-bind="item.type"></span></p>
					</div>
					<div class="col-lg-11 col-md-11 col-sm-11">
						<ul class="nav navbar-nav custom-nav">
							<li ng-repeat="subType in item.subtypes">
								<a href="" ng-click="changeMenu(subType.type, subType.subtype, subType.count)"><span ng-bind="subType.subtype"></span>(<span class="subtype-amount" ng-bind="subType.count"></span>)</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</section>			
 	</main> 
 
	<!-- Footer -->
	<%@ include file="../common/footer.jsp" %>
</body>
</html>