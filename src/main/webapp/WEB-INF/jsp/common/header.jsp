<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="css/common/fontawesome.css" />
<link rel="stylesheet" type="text/css" href="css/common/bootstrap.min.css" />	
<link rel="stylesheet" type="text/css" href="css/common/header.css" />	
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
                     <a href="" title="进入个人中心" ng-bind="user.username"></a>
                   	<a><img src="img/user.png"></a>
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
          <form class="custom-search-form" role="search" ng-submit="search()"> 
	      	<input type="text" class="custom-search-box" ng-model="$parent.key" spellcheck="false" autocomplete="off" placeholder="请输入搜索关键字" /> 
	      	<button type="submit" id="custom-search-button" class="custom-search-button"><i class="fa fa-search"></i></button> 
	      </form> 
        </div>
      </div>
    </nav>

	 <div class="sub-menu"> 
	 	<div class="container"> 
			<ul class="nav navbar-nav custom-nav"> 
				<li ng-repeat="m in menu | orderBy: 'sequence'">
					<a href="" ng-click="changeMenu(m.subType, m.count)" ng-class="{on: m.subType == page.subtype}"><span class="sub-type" ng-bind="m.subType"></span><span class="subtype-amount" ng-bind="m.count"></span></a>
				</li>
			</ul> 
		</div> 
	 </div> 
</header> 
<div class="container">
	<!-- Search Box -->
    <form id="main-search-box" class="custom-search-form" role="search" ng-submit="search()"> 
    	<input type="text" class="custom-search-box" ng-model="$parent.key" spellcheck="false" autocomplete="off" placeholder="请输入搜索关键字" /> 
    	<button type="submit" class="custom-search-button"><i class="fa fa-search"></i></button> 
    </form>
</div>
<script src="js/controllers/HeaderController.js"></script>