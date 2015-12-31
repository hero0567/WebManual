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

    <title>首页</title>

    <link href="css/custom.css" rel="stylesheet">

    <link href="css/common.css" rel="stylesheet">

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sticky-footer-navbar.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>


<body ng-app="" ng-controller="IndexController">	
	<nav class="navbar navbar-default navbar-fixed-top">	  	
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <br>
          <a class="navbar-brand" href="#">92说明书你好</a>
        </div>

        <div id="navbar" class="navbar-collapse collapse" aria-expanded="false"  >
        	<br>
			<div class="row">
			  <div class="col-lg-2 col-md-2 col-sm-1 col-xs-1">
			  </div>
			  <div class="col-lg-6 col-md-8 col-sm-10 col-xs-10">
			    <div class="input-group">
			      <div class="input-group-btn">
			        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{searchKey}} <span class="caret"></span></button>
			        <ul class="dropdown-menu">
			          <li><a ng-click="changeSearchKey('全部')">全部</a></li>
			          <li><a ng-click="changeSearchKey('电视')">电视</a></li>
			          <li><a ng-click="changeSearchKey('冰箱')">冰箱</a></li>
			          <li><a ng-click="changeSearchKey('空调')">空调</a></li>
			          <li><a ng-click="changeSearchKey('洗衣机')">洗衣机</a></li>
			          <li><a ng-click="changeSearchKey('热水器')">热水器</a></li>
			          <li><a ng-click="changeSearchKey('净水器')">净水器</a></li>
			          <li><a ng-click="changeSearchKey('空气净化器')">空气净化器</a></li>
			        </ul>
			      </div><!-- /btn-group -->
			      <input type="text" class="form-control" aria-label="...">
			      <span class="input-group-btn">
			        <button class="btn btn-default" type="button" ng-click="search()">搜索</button>
			      </span>
			    </div><!-- /input-group -->
			  </div><!-- /.col-lg-6 -->
			  
			  <div class="col-lg-4 col-md-2 col-sm-1 col-xs-1">
			  </div>
			</div><!-- /.row -->

			<br>

			<ul class="row nav navbar-nav">
				<li class="active"><a href="#">首页</a></li>
				<li><a href="#about">电视</a></li>
				<li><a href="#about">冰箱</a></li>
				<li><a href="#about">空调</a></li>
				<li><a href="#contact">洗衣机</a></li>
				<li><a href="#about">热水器</a></li>
				<li><a href="#contact">净水器</a></li>
				<li><a href="#contact">空气净化器</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="">我的搜藏 &nbsp;<span class="badge">42</span></a></li> 
				<li><a href="">一只小牛</a></li>
			</ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    <br><br><br>
	<div class="container">
		
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="panel panel-default">
				  <div class="panel-body">
				  	<div class="row">
				  		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
				  			<h4>电视</h4>
				  		</div>
				  		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
				  			<a class="f-r">更多 </a>
				  		</div>
				  	</div>
				  	<div class="row">
				  		<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" ng-repeat="tv in tvs">
				          <div class="thumbnail">
								<img src="" alt="">
								<h4>{{tv.name}}</h4>
								<p>{{tv.des}}</p>
								<p><a class="btn btn-default" href="#" role="button">详细信息 »</a></p>
							</div>
				        </div> 
				  	</div>
				  </div>
				</div>
			</div>
	    </div>
	    
	    <div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="panel panel-default">
				  <div class="panel-body">
				  	<div class="row">
				  		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
				  			<h4>冰箱</h4>
				  		</div>
				  		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
				  			<a class="f-r">更多 </a>
				  		</div>
				  	</div>
				  	<div class="row">
				  		<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" ng-repeat="refrigerator in refrigerators">
				          <div class="thumbnail">
								<img src="" alt="">
								<h4>{{refrigerator.name}}</h4>
								<p>{{refrigerator.des}}</p>
								<p><a class="btn btn-default" href="#" role="button">详细信息 »</a></p>
							</div>
				        </div> 
				  	</div>
				  </div>
				</div>
			</div>
	    </div>
	    
	    <div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="panel panel-default">
				  <div class="panel-body">
				  	<div class="row">
				  		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
				  			<h4>空调</h4>
				  		</div>
				  		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
				  			<a class="f-r">更多 </a>
				  		</div>
				  	</div>
				  	<div class="row">
				  		<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" ng-repeat="ac in airConditions">
				          <div class="thumbnail">
								<img src="" alt="">
								<h4>{{ac.name}}</h4>
								<p>{{ac.des}}</p>
								<p><a class="btn btn-default" href="#" role="button">详细信息 »</a></p>
							</div>
				        </div> 
				  	</div>
				  </div>
				</div>
			</div>
	    </div>
	    
	    <div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="panel panel-default">
				  <div class="panel-body">
				  	<div class="row">
				  		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
				  			<h4>热水器</h4>
				  		</div>
				  		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
				  			<a class="f-r">更多 </a>
				  		</div>
				  	</div>
				  	<div class="row">
				  		<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" ng-repeat="waterMachine in waterMahines">
				          <div class="thumbnail">
								<img src="" alt="">
								<h4>{{waterMachine.name}}</h4>
								<p>{{waterMachine.des}}</p>
								<p><a class="btn btn-default" href="#" role="button">详细信息 »</a></p>
							</div>
				        </div> 
				  	</div>
				  </div>
				</div>
			</div>
	    </div>
	    
	    <div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="panel panel-default">
				  <div class="panel-body">
				  	<div class="row">
				  		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
				  			<h4>净水器</h4>
				  		</div>
				  		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
				  			<a class="f-r">更多 </a>
				  		</div>
				  	</div>
				  	<div class="row">
				  		<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" ng-repeat="waterCleaner in warterCleaners">
				          <div class="thumbnail">
								<img src="" alt="">
								<h4>{{waterCleaner.name}}</h4>
								<p>{{waterCleaner.des}}</p>
								<p><a class="btn btn-default" href="#" role="button">详细信息 »</a></p>
							</div>
				        </div> 
				  	</div>
				  </div>
				</div>
			</div>
	    </div>
	    
	    <div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="panel panel-default">
				  <div class="panel-body">
				  	<div class="row">
				  		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
				  			<h4>空气净化器</h4>
				  		</div>
				  		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
				  			<a class="f-r">更多 </a>
				  		</div>
				  	</div>
				  	<div class="row">
				  		<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" ng-repeat="airCleaner in airCleaners">
				          <div class="thumbnail">
								<img src="" alt="">
								<h4>{{airCleaner.name}}</h4>
								<p>{{airCleaner.des}}</p>
								<p><a class="btn btn-default" href="#" role="button">详细信息 »</a></p>
							</div>
				        </div> 
				  	</div>
				  </div>
				</div>
			</div>
	    </div>
	</div> 


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery-1.10.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="./js/ie10-viewport-bug-workaround.js"></script>

</body>
<script src="js/lib/angular/angular.js"></script>
<script src="js/controllers/IndexController.js"></script>
</html>