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

<body ng-app="app" ng-controller="FavoritesController">
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
			<p>请确实是否取消该收藏？</p>
		</div>
		<div class="custom-modal-footer">
			<button type="button" class="btn btn-default"
				ng-click="deleteFavoriteItem()">是</button>
			<button type="button" class="btn btn-primary cutom-btn-primary"
				ng-click="cancelDeleteItem()">否</button>
		</div>
	</div>

	<div class="ledao-container">
		<div id="deleteSuccess" class="alert alert-success hide" role="alert">删除成功！</div>
		<div id="deleteFail" class="alert alert-danger hide" role="alert">删除失败，请重试！</div>
		<div class="row">
			<div class="col-lg-3 col-md-3 col-sm-12 margin-bottom-20">
				<section class="sidebar white-block">
					<ul class="list-lite">
						<li ng-repeat="m in favorList"
							ng-click="changeSubType(m.subType, m.count)"><a
							ng-class="{on: m.subType == currentSubType}" href=""
							ng-bind="m.subType +'('+ m.count+')'"></a></li>
					</ul>
				</section>
			</div>

			<div class="col-lg-9 col-md-9 col-sm-12">
				<section class="white-block p-l-r margin-bottom-20 ">
					<div class="custom-section-head">
						<span class="f-r"> 我收藏的“ <b>说明书</b> ”，共有 <span
							ng-bind="count"></span> 本
						</span>
					</div>
				</section>

				<section class="custom-manuals white-block p-l-r">
					<table class="table custom-appliance-table">
						<tr>
							<th class="cell maincell">名称</th>
							<th class="cell brand">品牌</th>
							<th class="cell version">型号</th>
							<th class="cell read">在线阅读</th>
							<th class="cell action">关注</th>
						</tr>
						<tr class="border-gray-lower-dashed" ng-repeat="sub in results">
							<td class="cell maincell"><a
								ng-href="/details?id={{sub.handBook.id}}"
								ng-bind="sub.handBook.name"></a></td>

							<td class="cell brand"><a
								ng-href="/result?key={{sub.handBook.brand}}"
								ng-bind="sub.handBook.brand"></a></td>
							<td class="cell version"><span class="tag gray"
								ng-bind="sub.handBook.version"></span></td>
							<td class="cell read"> 
								<a href=""><i class="fa fa-eye"></i> </a>
							</td>
							<td class="cell action"><a href=""
								ng-click="addFavorite(user.id, sub.handBook)"
								class="fa fa-heart"></a></td>
						</tr>
					</table>

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

	<!-- Footer -->
	<%@ include file="../common/footer.jsp"%>
</body>
</html>