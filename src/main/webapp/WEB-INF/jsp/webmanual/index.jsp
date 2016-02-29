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
	<title>首页 ｜ 乐道说明书</title>
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="./img/favicon.png" />
	<link rel="apple-touch-icon-precomposed" href="./img/favicon.png" />
	
	<meta name="Keywords" content=" " />
	<meta name="Description" content=" " />
	
	<link rel="stylesheet" type="text/css" href="css/common/site.css" />
	<link rel="stylesheet" type="text/css" href="css/common/fontawesome.css" />
	<link rel="stylesheet" type="text/css" href="css/common/bootstrap.min.css" />
	
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

<body ng-app="app">  
	<div class="d-n">
		<img src="./img/favicon.png" />
	</div> 
  	<!--[if lt IE 10]>
        <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]--> 
	
	<!-- Header -->
	<%@ include file="../common/header.jsp" %>
	
	<main ng-controller="IndexController">
		<!-- Category and Brands -->
		<div class="ledao-banners">
			<div class="container">		
				<div class="row">
					<section id="ledao-manualtypes" class="col-lg-12 col-md-12 col-sm-12" >
						<div class="section_head" >
						    <h3 class="section-title f-l"><i class="fa fa-th-large"></i> <span>品类细分</span></h3> 
						     
							<div class="section-des f-r">
							  <span ng-bind="'收录品牌：' + typenu "></span>  <!-- 换成动态的 -->
							</div>  
						</div>
						<div class="section_body row">
							<div class="col-lg-3 col-md-3 col-sm-12 splide" ng-repeat="type in typemenu">
								<div class="body-title">
									<h4 ng-bind="type.type" class="f-l"> </h4><div class="f-l section-des"><span ng-bind="type.typecount"></span>个品类</div>
								</div>
								
								<ul>
									<li ng-repeat="subType in type.subtypes">
										<a href="{{subType.url}}" title="{{subType.subtype}}" alert="{{subType.subtype}}"><span ng-bind="subType.subtype"></span> （<span title="{{'品类共计：'+ subType.count}}" ng-bind="subType.count"></span>）</a>
									</li>
								</ul>
							</div>
						</div>  
					</section>
					
					<section id="ledao-manualtypes" class="col-lg-12 col-md-12 col-sm-12" >
						<div class="section_head" >
						    <h3 class="section-title f-l"><i class="fa fa-list"></i> <span>品牌细分</span></h3> 
						     
							<div class="section-des f-r">
							  <span ng-bind="'收录品牌：' + brandnu "></span>  <!-- 换成动态的 -->
							</div>  
						</div>
						<div class="section_body row">
							<div class="col-lg-6 col-md-6 col-sm-12 splide" ng-repeat="brand in brandmenu">
								<div class="body-title">
									<h4 ng-bind="brand.origin" class="f-l"> </h4><div class="f-l section-des"><span ng-bind="brand.origincount"></span>个品牌</div>
								</div>
								<ul>
									<li ng-repeat="subBrand in brand.subtypes">
										<table class="brand">
											<tr>
												<td>
													<a href="{{subBrand.url}}" title="{{subBrand.name}}" alert="{{subBrand.name}}">
														<img src="{{subBrand.img}}"/>
													</a>
												</td>
											</tr>
											<tr>
												<td>
													<a href="{{subBrand.url}}" title="{{subBrand.name}}" alert="{{subBrand.name}}">
														<span ng-bind="subBrand.name"></span> （<span title="{{'品牌共计：'+ subBrand.count}}" ng-bind="subBrand.count"></span>）
													</a>
												</td>
											</tr>
										</table>
									</li>
								</ul>
							</div>
						</div>  
					</section>
				</div>
			</div>
		</div>				
 	</main> 
 
	<!-- Footer -->
	<%@ include file="../common/footer.jsp" %>
</body>
</html>