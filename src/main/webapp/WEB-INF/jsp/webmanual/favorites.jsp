<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class=" juzi js flexbox no-touch opacity csstransforms3d svg" lang="">
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
	<title>我的收藏 ｜ 爱尚手册</title>
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="./img/favicon.png" />
	<link rel="apple-touch-icon-precomposed" href="./img/favicon.png" />
	
	<meta name="Keywords" content=" " />
	<meta name="Description" content=" " />
	
	<link rel="stylesheet" type="text/css" href="css/pages/favorites.css" />
	<link rel="stylesheet" type="text/css" href="css/common/fontawesome.css" />
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
    <script src="js/lib/others/modernizr.js"></script>
    <script src="js/lib/angular/angular.js"></script>
    <script src="js/lib/angular/angular-cookies.min.js"></script>
    <script src="js/app.js"></script>
	<script src="js/controllers/FavoritesController.js"></script>
	<script src="js/service/UserService.js"></script>	
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body ng-app="app" ng-controller="FavoritesController" class=""> 
	<div class="d-n">
	  <img src="./img/favicon.png" />
	</div> 
	<!--[if lt IE 10]>
	       <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	   <![endif]--> 
	<div class="contentwrap"> 
		<%@ include file="../common/header.jsp" %>
		
		<div class="container margin-bottom-20">
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-12">
					<section class="sidebar white-block">
						<ul class="list-lite">
							<li ng-repeat="m in favorList" ng-click="changeSubType(m.subType, m.count)"><a ng-class="{on: m.subType == currentSubType}" href="" ng-bind="m.subType"> <span ng-bind="">{{m.count}}</span></a></li>
						</ul>
					</section>
				</div>
				
				<div class="col-lg-9 col-md-9 col-sm-12">
					<section class="custom-my-favorites white-block p-l-r margin-bottom-20 ">
						<div class="custom-section-head">
							<span class="f-r">
								我收藏的“ <b>说明书</b> ”，共有  <span ng-bind="count"></span> 本
							</span>
						</div>
						<div class="custom-section-body">
							 <table class="table custom-appliance-table">
								<tr>
									<th class="cell maincell"> 名称 </th> 
									<th class="cell brand"> 品牌 </th> 
									<th class="cell version"> 型号 </th> 
									<th class="cell date"> 上市时间 </th> 
									<th class="cell action"> 关注 </th>
								</tr>
								<tr class="border-gray-lower-dashed" ng-repeat="sub in results">
						            <td class="cell maincell"> &nbsp;
						            	<a ng-href="/details?id={{sub.handBook.id}}" ng-bind="sub.handBook.name"></a>  
						            </td> 
							           
						            <td class="cell brand">&nbsp;
						            	<a ng-href="/result?key={{sub.handBook.brand}}" ng-bind="sub.handBook.brand"></a> 
						            </td> 
						            <td class="cell version"> &nbsp;
							             <span class="tag gray" ng-bind="sub.handBook.version"></span> 
						            </td> 
						            <td class="cell date"> &nbsp;
						            	<span class="tags t-small c-gray-aset"> <span ng-bind=" sub.handBook.productDate | date:'yyyy-MM-dd' "></span></span>
					            	</td>
						            <td class="cell action"> &nbsp;
						            	 <a href="" class="fa fa-star" ng-click="addFavorite(user.id, sub.handBook)"></a> 
					            	</td>
								</tr>
							</table>
						</div>
						
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
</body>
</html>