<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css" href="/css/common/fontawesome.css" />
<link rel="stylesheet" type="text/css" href="/css/common/header.css" />

<script src="/js/lib/jquery/jquery.js"></script>
<script src="/js/controllers/MenuController.js"></script>
<script src="/js/lib/others/jquery.SuperSlide.2.1.1.js"></script>
<script src="/js/lib/others/jquery-listnav.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('.ledao_mod_title').on("mouseover",function(event){
		  //鼠标悬浮
		  $('#ledao_nav').removeClass('d-n').addClass('d-b');
	});
	$('#ledao_nav').on("mouseover",function(event){
		  //鼠标悬浮
		  $('#ledao_nav').removeClass('d-n').addClass('d-b');
	});
	$('#ledao_new_menu').on("mouseout",function(event){
		  //鼠标悬浮
		  $('#ledao_nav').removeClass('d-b').addClass('d-n');
	});
});
</script>
 

<div id="ledao_new_menu" ng-controller="MenuController">
	<div class="ledao-container">
	    	<ul class="menu">
	    		<li class="ledao_mod_title"><a href="/"><i class="fa fa-th-list"></i> <span>说明书分类筛选</span></a></li>
	        	<li><a href="/index">说明书大全</a></li>
	            <li><a href="/yellowpage">品牌黄页</a></li>
	            <!-- <li><a href="">常识分享</a></li> -->
	        </ul>
	        
	        <div id="ledao_nav" class="d-n">
	    	<!--左侧栏目开始-->
	    	<div class="ledao_cat_nav fl">
	            <ul class="cate_nav">
	            	<li class="on">
	                	<div class="cat_1_nav">
	                        <a href="" class="a-1">大家电</a>
	                    </div>
	                </li>
	            	<li class="">
	                	<div class="cat_2_nav">
	                        <a href="" class="a-2">生活电器</a> 
	                    </div>
	                </li>
	            	<li class="">
	                	<div class="cat_3_nav">
	                        <a href="" class="a-3">厨卫电器</a> 
	                    </div>
	                </li>
	            	<li class="">
	                	<div class="cat_4_nav">
	                        <a href="" class="a-4">个人护理</a>
	                    </div>
	                </li>
	            </ul>
	        </div>
	        <!--左侧栏目结束-->
	        <!--右侧内容开始-->
	        <div class="ledao_cat_content fr">
	        	<div class="cat_pannel clearfix" style="display: block;" ng-repeat="type in typemenu">
	            	<div class="fl cat_detail grid_col_2">
	                    <ul class="cat_label_list clearfix">
	                    	<li ng-repeat="subType in type.subtypes" style="border: 1px solid #f3f3f3; margin:5px;">
										<a ng-href="/types/{{subType.url}}" title="{{subType.subtype}}" alert="{{subType.subtype}}"><span ng-bind="subType.subtype"></span> （<span title="{{'品类共计：'+ subType.count}}" ng-bind="subType.count"></span>）</a>
							</li>
	                    </ul>
	                </div>
	            </div>
	
	        </div>
	        <!--右侧内容结束-->
	    </div>
	        
	        
	        
	</div>
</div>

<style type="text/css">
	ul.menu li.ledao_mod_title{
	    width: 160px;
	    text-align:left !important;
	    height: 40px;
	    line-height: 40px;
	    color: #fff;
	    padding-left: 20px;
	    font-weight: bold;
	    background: #ff500b;
	    box-shadow: 0 1px 3px rgba(0,0,0,0.2) !important;
	}
	ul.menu {
		display:inline-block;
		margin:0px !important;
	}
	ul.menu  li{
		width:120px; 
		float:left;
		text-align:center;
		
	}
	ul.menu  li a{
		color:#fff;
		height:40px;
		line-height:40px;
		font-size:14px;
	}
	
</style>


<script type="text/javascript">
	$("#ledao_nav").slide({ 
		titCell:".cate_nav li",
		mainCell:".ledao_cat_content",
		autoPlay:false,
		interTime:7400,
		delayTime:100 
	});
</script>
 