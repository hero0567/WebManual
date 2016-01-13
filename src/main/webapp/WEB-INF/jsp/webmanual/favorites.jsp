<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class=" juzi js flexbox no-touch opacity csstransforms3d svg" lang="">
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
	<title>我的收藏 ｜ 92说明书</title>
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="./img/favicon.png" />
	<link rel="apple-touch-icon-precomposed" href="./img/favicon.png" />
	
	<meta name="Keywords" content=" " />
	<meta name="Description" content=" " />
	
	<link rel="stylesheet" type="text/css" href="css/common/common.css" />
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
	<div class="none">
	  <img src="./img/favicon.png" />
	</div> 
	<!--[if lt IE 10]>
	       <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	   <![endif]--> 
	<div class="contentwrap"> 
		 <%@ include file="../common/header.jsp" %>
		 <div class="boxed"> 
	     	<div class="sidebar left">
				<div class="sec">
					<ul class="list-lite">
						<li ng-repeat="m in favorList" ng-click="changeSubType(m.subType, m.count)"><a ng-class="{on: m.subType == currentSubType}" href="" ng-bind="m.subType"> <span ng-bind="">{{m.count}}</span></a></li>
					</ul>
				</div>	
			</div>

			<div class="main">
				<!-- block 搜索列表区 --> 
		       <div class="sec">
		       	<div class="search-title-bar">
					<span class="flr">
						你收藏的“ <b>说明书</b> ”，共有  <span ng-bind="count"></span> 本
					</span>
				</div> 
		        <ul class="list-multi-result thead"> 
		         <li> <i class="cell pic"> </i> <i class="cell maincell"> <span class="t-small">说明书名称</span> </i> <i class="cell fina"> 品牌 </i> <i class="cell fina"> 型号 </i> <i class="cell action"> 关注 </i> </li> 
		        </ul> 
		        <ul class="list-multi-result"> 
		          <li ng-repeat="sub in results"> 
		            <i class="cell pic"> 
		              <a href=""> 
		                <span class="incicon"><img ng-src="{{sub.handBook.imgUrl}}" /></span> 
		              </a> 
		            </i> 
		            <i class="cell maincell"> 
		              <p class="title"><a ng-href="/details?id={{sub.handBook.id}}" ng-bind="sub.handBook.name"></a></p> 
		              <p class="des">{{sub.handBook.productSize}}</p> 
		              <p> 
		                <span class="tags t-small c-gray-aset"> <a href="" ng-bind=" sub.handBook.productDate | date:'yyyy-MM-dd' "></a>上市</span>   
		              </p> 
		            </i> 
		            <i class="cell" ng-bind="sub.handBook.brand"> </i> 
		            <i class="cell round"> 
		              <a href=""><span class="tag gray" ng-bind="sub.handBook.version"></span></a> 
		            </i> 
		            <i class="cell action"> <a href="" class="fa fa-star" ng-click="addFavorite(user.id, sub, $index)"></a> </i> 
		          </li>			          
		        </ul> 
		       </div> 
		       <!-- block 分页区 -->
			   <div>
					<div class="ui-pagechange for-sec-bottom">
						<a href="#" ng-hide="page.pre" ng-click="goFirstPage()">首页</a> 
						<a href="#" ng-hide="page.pre" ng-click="goPrePage()">上一页</a> 
						<a href="#" ng-class="{on:  pageindex + page.ppn * page.ps == page.pn + 1}" ng-repeat="pageindex in ps" 
							ng-click="goPage(pageindex + page.ppn * page.ps)" ng-show="page.total > (pageindex - 1 + page.ppn * page.ps) * page.size && page.total > page.size">{{pageindex + page.ppn * page.ps}}</a> 
						<a href="#" ng-show="page.next" ng-click="goNextPage()">下一页</a> 
						<a href="#" ng-show="page.next" ng-click="goLastPage()">尾页 </a>
					</div>
			   </div> 
			</div>
	    </div> 
		
		<div class="ui-maintoolbar-box"> 
		  <div class="ui-maintoolbar"> 
		    <a class="card hoverc scroll2top"> 
		      <span class="t-big"> <i class="fa fa-chevron-up"></i> </span> 
		    </a> 
		    <a class="card hoverc scroll2bottom marb5"> 
		      <span class="t-big"> <i class="fa fa-chevron-down"></i> </span> 
		    </a> 
		    <a href="" target="_blank" class="card hovertext"> 
		      <span> <i class="fa fa-mobile t-big"></i> <span class="text t-small">APP</span> </span> 
		    </a> 
		    <a class="card hoverc"> 
		      <span> <i class="fa fa-qrcode t-big"></i> </span> 
		      <span class="left-qrcode"> <img src="./img/qrcode-juzi.png" /> 
		        <span class="c-gray t-small">92说明书公众号</span>  
		      </span> 
		    </a> 
		    <a href="" target="_blank" class="card hovertext"><span class="t-small">反馈</span></a> 
		  </div> 
		</div>
		
		<%@ include file="../common/footer.jsp" %> 
	</div> 
	<script>
	  window.site_url = 'https://92shuomingshu.com/';
	</script>	
</body>
</html>