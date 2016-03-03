<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="/css/common/fontawesome.css" />
<link rel="stylesheet" type="text/css" href="/css/common/bootstrap.min.css" />	
<link rel="stylesheet" type="text/css" href="/css/common/header.css" />	
<script src="/js/lib/jquery/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var $menuArrow = $('#user-menu-account-arrow');
	$('.user-menu').mouseenter( function(){
		$('#custom-user-menu').show();
		$menuArrow.removeClass('fa-chevron-down').addClass('fa-chevron-up')
	})
	$('.user-menu').mouseleave( function(){
		$('#custom-user-menu').hide();
		$menuArrow.addClass('fa-chevron-down').removeClass('fa-chevron-up')
	})
});
</script>
<header  ng-app="app" ng-controller="HeaderController"> 
	<nav class="custom-navbar">
      <div class="container">
        <div class="custom-navbar-header f-l">
          <a class="logo" href="/index">   </a>
        </div>
        <div id="navbar">
          <!-- Main Navigation -->
          <ul class="custom-navbar-nav custom-main-menu f-l ">
            <li class="active"><a href="/index">首页</a></li>
          </ul>
          
          <!-- Add to favorite, Singnin and Singup -->
          <ul class="custom-navbar-nav custom-header-ul f-r">
            <li>
            	<a href="http://www.92shuomingshu.com" title="92shuomingshu" rel="sidebar">
            		<span class="save-site"><i class="fa fa-plus"></i> 收藏本站
	      			</span>
		    	</a>
	    	</li>
            <li ng-show="!user.id">
		     	<a class="signin" href="/signin">登录</a>
           	</li>
           	<li ng-show="!user.id">
           		<a class="signup" href="/signup">注册</a> 
           	</li>
            <li ng-show="user.id">
            	<div class="user-menu">
                     <a class="user-menu-account" href="" title="进入个人中心" ><span ng-bind="user.username"></span> <i id="user-menu-account-arrow" class="fa fa-chevron-down"></i></a>
                   	 <!-- <a><img src="img/user.png"></a> -->
                     <div id="custom-user-menu">
                         <ul class="list-dropdown-menu">
                             <li><a href="/favorites">我的收藏</a></li>
                             <li><a href="" ng-click="logout()">退出</a></li>
                         </ul>
                     </div>
                 </div>
           	</li>
          </ul>
          
          <!-- Search Box -->
          <form class="custom-search-form" role="search" ng-submit="searchadmin()"> 
	      	<input type="text" class="custom-search-box" ng-model="$parent.key" spellcheck="false" autocomplete="off" placeholder="请输入搜索关键字" /> 
	      	<button type="submit" id="custom-search-button" class="custom-search-button"><i class="fa fa-search"></i></button> 
	      </form> 
        </div>
      </div>
    </nav>
</header> 
<div class="container">
	<!-- Search Box -->
    <form id="main-search-box" class="custom-search-form" role="search" ng-submit="search()"> 
    	<input type="text" class="custom-search-box" ng-model="$parent.key" spellcheck="false" autocomplete="off" placeholder="请输入搜索关键字" /> 
    	<button type="submit" class="custom-search-button"><i class="fa fa-search"></i></button> 
    </form>
</div>

<script src="/js/controllers/HeaderController.js"></script>