<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    
    <link rel="icon" href="../../favicon.ico">
	<title>首页 ｜ 乐道说明书</title>
	
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="/img/favicon.png" />
	<link rel="apple-touch-icon-precomposed" href="/img/favicon.png" />
	
	<meta name="Keywords" content=" " />
	<meta name="Description" content=" " />
	
	<link rel="stylesheet" type="text/css" href="/css/common/fontawesome.css" />
	<link rel="stylesheet" type="text/css" href="/css/common/site.css" />
	<link rel="stylesheet" type="text/css" href="/css/common/manuals.css" />

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
	<script src="/js/controllers/BrandsController.js"></script>
	<script src="/js/service/UserService.js"></script>
	
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body ng-app="app" ng-controller="BrandsController" class="">  
	<div class="d-n">
		<img src="/img/favicon.png" />
	</div> 
  	<!--[if lt IE 10]>
        <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]--> 
	
	<!-- Header -->
	<%@ include file="../common/header.jsp" %>
	
	<main>
		<!-- Category and Brands -->
		<div class="ledao-banners">
			<div class="ledao-container">
				<div class="ledao-manual-filter-title">
				    <h3>
				      <b>Haier(海尔)品牌</b><em>说明书筛选</em>
				    </h3>
				    <div class="st-ext f-r padding-right-10">
				      共&nbsp;<span>1225</span>说明书
				    </div>
				</div>
				
				<div class="ledao-filter">
					<div class="list-screen">
						<div style="padding:10px 30px 10px 10px;">
							
							<div class="screen-term">
								<div class="selectNumberScreen">
									<div id="selectList" class="screenBox screenBackground">
										<dl class="listIndex">
										<dt>产品类型</dt>
											<dd>
												<label><a href="#" attrval="不限" ng-click="clearProductTypes()">不限</a></label>
												<label ng-repeat="productType in productTypes"><input type="checkbox" ng-click="check(productType)" ng-checked="productType.checked" ><a href="#" ng-click="check(productType)" ng-bind="productType.name"></a></label>
												<span class="more" style="float:right;"><em class="open"></em>更多</span>
											</dd> 
										</dl>
										<dl class="listIndex">
										<dt>上市时间</dt>
										<dd>
											<label><a href="#" attrval="不限" ng-click="clearTimeline()">不限</a></label>
											<form action="" method="get"> 
												<label ng-repeat="time in timeline"><input type="checkbox" value="" ng-click="check(time)" ng-checked="time.checked" ><a href="#" ng-click="check(time)" ng-bind="time.name"></a></label>
											</form> 
										</dd></dl>
									</div>
								</div>   
							</div>
						</div>
					
						<div class="hasBeenSelected clearfix">
							<span id="time-num"><font>208</font>篇说明书</span>
							<div class="eliminateCriteria" ng-click="clearAll()">【清空全部】</div>
							<dl>
								<dt>已选条件：</dt>
								<dd style="" class="clearDd">
									<div class="clearList">
										<div class="selectedInfor selectedShow" ng-repeat="productType in productTypes" ng-show="productType.checked"><span>品牌</span><label ng-bind="productType.name"></label><em></em></div>
										<div class="selectedInfor selectedShow" ng-repeat="time in timeline" ng-show="time.checked"><span>上市时间</span><label ng-bind="time.name"></label><em></em></div>
									</div>
								</dd>
							</dl>
						</div>
				
						<div class="screen-top" >
							<span>产品型号</span><input type="text" class="product-name">
							<a href="" id="submit-btn">搜索</a>
						</div>
					</div>
				
				</div>
			</div>
		</div>
 	</main> 
 
	<!-- Footer -->
	<%@ include file="../common/footer.jsp" %>
</body>
</html>