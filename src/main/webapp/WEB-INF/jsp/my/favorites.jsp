<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">
<title>电视说明书 ｜ 乐道说明书</title>
<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="/img/favicon.png" />
<link rel="apple-touch-icon-precomposed" href="/img/favicon.png" />

<meta name="Keywords" content=" " />
<meta name="Description" content=" " />

<link rel="stylesheet" type="text/css" href="/css/common/fontawesome.css" />
<link rel="stylesheet" type="text/css" href="/css/common/site.css" />
<link rel="stylesheet" type="text/css" href="/css/common/manuals.css" />

<script src="/js/lib/others/modernizr.js"></script>
<script src="/js/lib/others/jquery-1.5.1.js"></script>

<script src="/js/lib/others/ie10-viewport-bug-workaround.js"></script>
<script src="/js/lib/angular/angular.js"></script>
<script src="/js/lib/angular/angular-cookies.min.js"></script>
<script src="/js/app.js"></script>
<script src="/js/controllers/FavoritesController.js"></script>
<script src="/js/service/UserService.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="AAZ	qwe" ng-app="app" ng-controller="FavoritesController">
	<div class="d-n">
		<img src="/img/favicon.png" />
	</div>
	<!--[if lt IE 10]>
        <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

	<!-- Header -->
	<%@ include file="../common/header.jsp"%> 
	<main class="margin-top20"> <!-- Modal --> <!-- Button trigger modal -->
	<div id="custom-layer" class="constom-layer hide"></div>
	<div id="custom-modal" class="custom-modal-dialog hide">
		<div class="custom-modal-header">
			<h4 class="modal-title">取消收藏</h4>
		</div>
		<div class="custom-modal-body">
			<p>请确实是否取消该收藏？</p>`q12345rewsaX
					<!-- block 分页区 -->
					<div>
						<div class="custom-pagination">
							<a href="#" ng-hide="page.pre" ng-click="goFirstPage()">首页</a> <a
								href="#" ng-hide="page.pre" ng-click="goPrePage()">上一页</a> <a
								href="#"
								ng-class="{on:  pageindex + page.ppn * page.ps == page.pn + 1}"
								ng-repeat="pageindex in ps"
								ng-click="goPage(pageindex + page.ppn * page.ps)"
								ng-show="page.total > (pageindex - 1 + page.ppn * page.ps) * page.size && page.total > page.size">{{pageindex
								+ page.ppn * page.ps}}</a> <a href="#" ng-show="page.next"
								ng-click="goNextPage()">下一页</a> <a href="#" ng-show="page.next"
								ng-click="goLastPage()">尾页 </a>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	</main>
dGZXdzC Xrtetgfddddd nx
	<!-- Footer -->
	<%@ include file="../common/footer.jsp"%>
</body>
</html>