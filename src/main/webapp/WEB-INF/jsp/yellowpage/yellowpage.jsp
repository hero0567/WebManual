<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->

<link rel="icon" href="../../favicon.ico">
<title>品牌黄页 ｜ 乐道说明书</title>

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="/img/favicon.png" />
<link rel="apple-touch-icon-precomposed" href="/img/favicon.png" />

<meta name="Keywords" content=" " />
<meta name="Description" content=" " />

<link rel="stylesheet" type="text/css" href="/css/common/bootstrap.min.css" />	
<link rel="stylesheet" type="text/css" href="/css/common/fontawesome.css" />
<link rel="stylesheet" type="text/css" href="/css/common/site.css" />
<link rel="stylesheet" type="text/css" href="css/pages/yellowpage.css" /> 

<script src="/js/lib/others/modernizr.js"></script>
<script>
	  window.site_url = 'https://92shuomingshu.com/';
</script>

<script src="/js/lib/jquery/jquery.min.js"></script>


<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="/js/lib/others/ie10-viewport-bug-workaround.js"></script>
<script src="/js/lib/angular/angular.js"></script>
<script src="/js/lib/angular/angular-cookies.min.js"></script>
<script src="/js/app.js"></script>
<script src="/js/service/UserService.js"></script>
<script src="/js/controllers/YellowPageController.js"></script>
<script src="/js/lib/others/jquery-listnav.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body ng-app="app" ng-controller="YellowPageController">
	<div class="d-n">
		<img src="/img/favicon.png" />
	</div>
	<!--[if lt IE 10]>
        <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

	<!-- Header -->
	<%@ include file="../common/header.jsp" %>
		
	<main> 
		<div class="container">
			<div class="row">
				<section id="all-brands" >
					
					<div class="section_head" >
					    <h3 class="section-title f-l"><i class="fa fa-th-large"></i> <span>品牌筛选</span></h3> 
					     
						<div class="section-des f-r">
						  <span>收录品牌：1223</span> <!-- 需要换成动态的 -->
						</div>  
					</div>
					<div class="section_body">
					
						<div class="inner">
						<img id="brandsData-loading" class="d-n loading" src="../img/loading.gif">
						      <ul id="brands-list" class="indented">
					        	<li ng-repeat="subBrand in brands">
					        		<a href="#" class="d-n" ng-bind="subBrand.name"></a>
									<table class="brand">
										<tr>
											<td rowspan="2">
												<a href="{{subBrand.url}}" title="{{subBrand.name}}" >
													<img src="{{subBrand.img}}" alt="{{subBrand.name}}"/>
												</a>
											</td>
											<td>
												官方客服电话：<a href="tel:{{subBrand.tel}}" title="{{'官方客服电话：'+subBrand.tel}}" >
													<span ng-bind="subBrand.tel"></span>
												</a>
											</td>
										</tr>
										<tr>
											<td>
												官方售后网站：<a href="{{subBrand.supportLink}}" title="{{'官方售后网站：' + subBrand.name}}">
													<span ng-bind="subBrand.supportLink"></span>
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
	
	
	
	</main>

	<!-- Footer -->
	<%@ include file="../common/footer.jsp"%>
</body>
</html>