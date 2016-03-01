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
	<title>热水器说明书 ｜ 乐道说明书</title>
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="./img/favicon.png" />
	<link rel="apple-touch-icon-precomposed" href="./img/favicon.png" />
	
	<meta name="Keywords" content=" " />
	<meta name="Description" content=" " />
	
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
    <script src="js/lib/others/jquery-1.5.1.js"></script>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/lib/others/ui.tab.js"></script>
    <script src="js/lib/others/filter.js"></script>
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
		
		<main>
			<!-- Category and Brands -->
			<div class="ledao-container">
				<div class="ledao-manual-filter-title">
				    <h3>
				      <b>热水器</b><em>说明书筛选</em>
				    </h3>
				    <div class="st-ext">
				      共&nbsp;<span>1225</span>个商品
				    </div>
				</div>
				
				<div class="ledao-filter">
					<div class="list-screen">
						<div style="padding:10px 30px 10px 10px;">
							
							<div class="screen-term">
								<div class="selectNumberScreen">
									<div id="selectList" class="screenBox screenBackground">
										<dl class="listIndex">
										<dt>品牌</dt>
											<dd>
												<label><a href="javascript:;" attrval="不限">不限</a></label>
												<label><input name="checkbox2" type="checkbox" value=""><a href="javascript:;">海尔</a></label>
												<label><input name="checkbox2" type="checkbox" value=""><a href="javascript:;">长虹</a> </label>
												<label><input name="checkbox2" type="checkbox" value=""><a href="javascript:;">海信</a> </label>
												<label><input name="checkbox2" type="checkbox" value=""><a href="javascript:;">LG</a></label>
												<label><input name="checkbox2" type="checkbox" value=""><a href="javascript:;">TCL</a></label>
												<label><input name="checkbox2" type="checkbox" value=""><a href="javascript:;">三星</a></label>
												<label><input name="checkbox2" type="checkbox" value=""><a href="javascript:;">TCL</a></label>
												<label><input name="checkbox2" type="checkbox" value=""><a href="javascript:;">TCL</a></label>
												<label><input name="checkbox2" type="checkbox" value=""><a href="javascript:;">TCL</a></label>
												<span class="more" style="float:right;"><em class="open"></em>更多</span>
											</dd> 
										</dl>
										<dl class="listIndex">
										<dt>上市时间</dt>
										<dd>
											<label><a href="javascript:;" attrval="不限">不限</a></label>
											<form action="" method="get"> 
												<label><input name="checkbox3" type="checkbox" value=""><a href="javascript:;">2012年之前</a></label>
												<label><input name="checkbox3" type="checkbox" value=""><a href="javascript:;">2013</a> </label> 
												<label><input name="checkbox3" type="checkbox" value=""><a href="javascript:;">2014</a> </label>
												<label><input name="checkbox3" type="checkbox" value=""><a href="javascript:;">2015</a> </label>    
											</form> 
										</dd></dl>
									</div>
								</div>   
							</div>
						</div>
					
						<div class="hasBeenSelected clearfix">
							<span id="time-num"><font>208</font>篇说明书</span>
							<div class="eliminateCriteria">【清空全部】</div>
							<dl>
								<dt>已选条件：</dt>
								<dd style="" class="clearDd">
									<div class="clearList"></div>
								</dd>
							</dl>
						</div>
				
						<div class="screen-top" >
							<span>产品型号</span><input type="text" class="product-name">
							<a href="" id="submit-btn">搜索</a>
						</div>
					</div>
				
				</div>
				
				<!-- manuals -->
				<div class="tabcon" id="topcon">
					<div class="subbox">
						<div class="sublist">
						        <ul class="sublist-th">
						            <li class="tabth clearfix">
						                <span style="width: 20%">名称</span>
						                <span style="width: 10%">品牌</span>
						                <span style="width: 15%">型号</span>
						                <span style="width: 10%">类型</span>
						                <span style="width: 10%">详细信息</span>
						                <span style="width: 10%">在线阅读</span>
						                <span style="width: 10%">收藏</span>
						                <span style="width: 9%">下载</span>
						            </li>
						        </ul>
					            <ul class="tabUl">
					                <li class="tabtr clearfix">
					                    <span style="width: 20%">海尔液晶电视HXXGD说明书</span>
						                <span style="width: 10%">海尔</span>
						                <span style="width: 15%">HXXGD</span>
						                <span style="width: 10%">液晶电视</span>
						                <span style="width: 10%"><a href="">详细信息</a></span>
						                <span style="width: 10%"><a href="">在线阅读</a></span>
						                <span style="width: 10%"><a href="">收藏</a></span>
						                <span style="width: 9%"><a href="">下载</a></span>
					                </li>
					                <li class="tabtr clearfix">
					                    <span style="width: 20%">海尔液晶电视HXXGD说明书</span>
						                <span style="width: 10%">海尔</span>
						                <span style="width: 15%">HXXGD</span>
						                <span style="width: 10%">液晶电视</span>
						                <span style="width: 10%"><a href="">详细信息</a></span>
						                <span style="width: 10%"><a href="">在线阅读</a></span>
						                <span style="width: 10%"><a href="">收藏</a></span>
						                <span style="width: 9%"><a href="">下载</a></span>
					                </li>
					                <li class="tabtr clearfix">
					                    <span style="width: 20%">海尔液晶电视HXXGD说明书</span>
						                <span style="width: 10%">海尔</span>
						                <span style="width: 15%">HXXGD</span>
						                <span style="width: 10%">液晶电视</span>
						                <span style="width: 10%"><a href="">详细信息</a></span>
						                <span style="width: 10%"><a href="">在线阅读</a></span>
						                <span style="width: 10%"><a href="">收藏</a></span>
						                <span style="width: 9%"><a href="">下载</a></span>
					                </li>
					                <li class="tabtr clearfix">
					                    <span style="width: 20%">海尔液晶电视HXXGD说明书</span>
						                <span style="width: 10%">海尔</span>
						                <span style="width: 15%">HXXGD</span>
						                <span style="width: 10%">液晶电视</span>
						                <span style="width: 10%"><a href="">详细信息</a></span>
						                <span style="width: 10%"><a href="">在线阅读</a></span>
						                <span style="width: 10%"><a href="">收藏</a></span>
						                <span style="width: 9%"><a href="">下载</a></span>
					                </li>
					                <li class="tabtr clearfix">
					                    <span style="width: 20%">海尔液晶电视HXXGD说明书</span>
						                <span style="width: 10%">海尔</span>
						                <span style="width: 15%">HXXGD</span>
						                <span style="width: 10%">液晶电视</span>
						                <span style="width: 10%"><a href="">详细信息</a></span>
						                <span style="width: 10%"><a href="">在线阅读</a></span>
						                <span style="width: 10%"><a href="">收藏</a></span>
						                <span style="width: 9%"><a href="">下载</a></span>
					                </li>
					                <li class="tabtr clearfix">
					                    <span style="width: 20%">海尔液晶电视HXXGD说明书</span>
						                <span style="width: 10%">海尔</span>
						                <span style="width: 15%">HXXGD</span>
						                <span style="width: 10%">液晶电视</span>
						                <span style="width: 10%"><a href="">详细信息</a></span>
						                <span style="width: 10%"><a href="">在线阅读</a></span>
						                <span style="width: 10%"><a href="">收藏</a></span>
						                <span style="width: 9%"><a href="">下载</a></span>
					                </li>
					                <li class="tabtr clearfix">
					                    <span style="width: 20%">海尔液晶电视HXXGD说明书</span>
						                <span style="width: 10%">海尔</span>
						                <span style="width: 15%">HXXGD</span>
						                <span style="width: 10%">液晶电视</span>
						                <span style="width: 10%"><a href="">详细信息</a></span>
						                <span style="width: 10%"><a href="">在线阅读</a></span>
						                <span style="width: 10%"><a href="">收藏</a></span>
						                <span style="width: 9%"><a href="">下载</a></span>
					                </li>
					                <li class="tabtr clearfix">
					                    <span style="width: 20%">海尔液晶电视HXXGD说明书</span>
						                <span style="width: 10%">海尔</span>
						                <span style="width: 15%">HXXGD</span>
						                <span style="width: 10%">液晶电视</span>
						                <span style="width: 10%"><a href="">详细信息</a></span>
						                <span style="width: 10%"><a href="">在线阅读</a></span>
						                <span style="width: 10%"><a href="">收藏</a></span>
						                <span style="width: 9%"><a href="">下载</a></span>
					                </li>
					            </ul>
						</div> 
						
					</div> 
					<!-- block 分页区 -->
					<div class="custom-pagination">
						<a href="#" ng-hide="page.pre" ng-click="goFirstPage()">首页</a> 
						<a href="#" ng-hide="page.pre" ng-click="goPrePage()">上一页</a> 
						<a href="#" ng-class="{on:  pageindex + page.ppn * page.ps == page.pn + 1}" ng-repeat="pageindex in page.psinx" 
							ng-click="goPage(pageindex + page.ppn * page.ps)" ng-show="page.total > (pageindex - 1 + page.ppn * page.ps) * page.size && page.total > page.size">{{pageindex + page.ppn * page.ps}}</a> 
						<a href="#" ng-show="page.next" ng-click="goNextPage()">下一页</a> 
						<a href="#" ng-show="page.next" ng-click="goLastPage()">尾页 </a>
					</div>
				</div>
				
			</div>
	 	</main> 
	 
		<!-- Footer -->
		<%@ include file="../common/footer.jsp" %>
</body>
</html>