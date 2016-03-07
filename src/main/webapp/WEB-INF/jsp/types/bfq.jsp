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
<title>播放器说明书 ｜ 乐道说明书</title>
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
	<script src="/js/controllers/TypesController.js"></script>
	<script src="/js/service/UserService.js"></script>
	
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script>
window.subtype = '播放器';
       
       $(document).ready(function(){
    		$('#show-more').on("click",function(event){
    		  if($('.brands-filter').hasClass('height-110')){
    			  $('.brands-filter').removeClass('height-110');
    		  }else{
    			  $('.brands-filter').addClass('height-110');
    		  }
    		  
    		})
    	});
   	</script>
</head>

<body ng-app="app" ng-controller="TypesController">  
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
			<div class="ledao-container">
				<div class="ledao-manual-filter-title">
				    <h3>
				      <b ng-bind="subtype"></b><em>说明书筛选</em>
				    </h3>
				    <div class="st-ext f-r">
				      共&nbsp;<span ng-bind="total"></span>个商品
				    </div>
				</div>
				
				<div class="ledao-filter">
					<div class="list-screen">
						<div style="padding:10px 30px 10px 10px;">
							
							<div class="screen-term">
								<div class="selectNumberScreen">
									<div id="selectList" class="screenBox screenBackground">
										<dl class="listIndex brands-filter height-110">
										<dt>品牌</dt>
											<dd>
												<label><a href="#" attrval="不限" ng-click="clearBrand()">不限</a></label>
												<label ng-repeat="brand in brands"><input type="checkbox" ng-click="check(brand)" ng-checked="brand.checked" ><a href="#" ng-click="check(brand)" ng-bind="brand.name"></a></label>
												<span id="show-more" class="more" style="float:right;"><em class="open"></em>更多</span>
											</dd> 
										</dl>
										<dl class="listIndex border-bottom-none">
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
							<span id="time-num"><font ng-bind="page.total"></font>篇说明书</span>
							<div class="eliminateCriteria" ng-click="clearAll()">【清空全部】</div>
							<dl>
								<dt>已选条件：</dt>
								<dd style="" class="clearDd">
									<div class="clearList">
										<div class="selectedInfor selectedShow" ng-repeat="brand in brands" ng-show="brand.checked"><span>品牌</span><label ng-bind="brand.name"></label><em></em></div>
										<div class="selectedInfor selectedShow" ng-repeat="time in timeline" ng-show="time.checked"><span>上市时间</span><label ng-bind="time.name"></label><em></em></div>
									</div>
								</dd>
							</dl>
						</div>
				
						<div class="screen-top" >
							<span>产品型号</span><input type="text" ng-model="version" class="product-name">
							<a href="" id="submit-btn" ng-click="search()">搜索</a>
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
						                <span style="width: 10%; text-align:center;">在线阅读</span>
						                <span style="width: 10%; text-align:center;">收藏</span>
						                <span style="width: 9%; text-align:center;">下载</span>
						            </li>
						        </ul>
					            <ul class="tabUl">
					                <li class="tabtr clearfix" ng-repeat="manual in manuals">
					                    <span style="width: 20%" ng-bind="manual.name | limitTo: 18"></span>
						                <span style="width: 10%" ng-bind="manual.brand  | limitTo: 8"></span>
						                <span style="width: 15%" ng-bind="manual.version | limitTo: 15"></span>
						                <span style="width: 10%" ng-bind="manual.subType"></span>
						                <span style="width: 10%"><a ng-href="/details?id={{manual.id}}">详细信息</a></span>
						                <span style="width: 10%; text-align:center;"><a href="" title="在线阅读" ng-click="readonline(manual)" ><i class="fa fa-eye"></i></a></span>
						                <span style="width: 10%; text-align:center;"><a href="" title="收藏" ng-class="{true: 'fa fa-heart', false: 'fa fa-heart-o'}[manual.favor == true]" ng-click="addFavorite(user.id, manual)"></a>  </span>
						                <span style="width: 9%; text-align:center;"><a ng-href="/details?id={{manual.id}}" title="下载" ><i class="fa fa-save"></i></a></span>
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

