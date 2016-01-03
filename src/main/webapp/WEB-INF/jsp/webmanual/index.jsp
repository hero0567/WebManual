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

    <link href="css/pages/index.css" rel="stylesheet">

    <link href="css/pages/fontawesome.css" rel="stylesheet">

    

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
	<div class="none">
   <img src="./img/favicon.png" />
  </div> 
  <!--[if lt IE 10]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]--> 
  <div class="thewrap"> 
   <header> 
    <div> 
     <div class="navbox"> 
      <div class="boxed"> 
       <a class="logo fll" href=""> <h1 class="seeo">92说明书</h1> </a> 

       <ul class="mainnav"> 
        <li class="tab on"> 
            <a href="">首页</a> 
        </li> <!--
        <li class="tab hoversub withsub"> 
            <a href="https://www.itjuzi.com/activity">说明书库</a> 
            <div class="subblock sub-activity"> 
                <div class="boxed"> 
                    <ul class="list-subactivity"> 
                    <li> 
                        <a href="https://www.itjuzi.com/activity/96" target="_blank"> <p class="title">2016年桔 &middot; 裂变创新大会</p> <p> <span class="">报名中</span> <span class="t-small c-gray">2016年1月10日</span> </p> </a> </li> 
                    <li> 
                        <a href="https://www.itjuzi.com/activity/95" target="_blank"> <p class="title">猎桔&middot;懒熊 体育创业专场项目路演</p> <p> <span class="">报名中</span> <span class="t-small c-gray">2016年1月7日</span> </p> </a> </li> 
                    <li> 
                        <a href="https://www.itjuzi.com/activity/94" target="_blank"> <p class="title">投资人教你如何在60秒把项目讲清楚</p> <p> <span class="">报名中</span> <span class="t-small c-gray">2016年1月19日</span> </p> </a> </li> 
                    
                    <li class="more"> 
                        <a href="https://www.itjuzi.com/activity" target="_blank"> <span class="more">查看全部活动 <i class="fa fa-angle-right"></i></span> </a> </li> 
                    </ul> 
                </div> 
            </div> 
        </li> 
        <li class="tab hoversub withsub"> <a href="javascript:void(0)">维护保养</a> 
         <div class="subblock sub-prod"> 
          <div class="boxed"> 
           <ul class="list-subprod"> 
            <li> <a href="https://www.itjuzi.com/special/chollima" target="_blank"><span class="jzicon qlm-index"></span>千里马俱乐部</a> </li> 
            <li> <a href="https://www.itjuzi.com/report" target="_blank"><span class="jzicon baogao-index"></span>桔子报告</a> </li> 
            <li> <a href="http://blog.itjuzi.com/" target="_blank"><span class="jzicon blog-index"></span>IT桔子博客</a> </li> 
           </ul> 
          </div> 
         </div> </li> 
        <li class="tab hoversub withsub"> <a href="javascript:void(0)">售后服务</a> 
         <div class="subblock"> 
          <div class="boxed"> 
           <ul class="list-subprod"> 
            <li> <a href="https://www.itjuzi.com/special/dataservice" target="_blank"><span class="jzicon dataservice-index"></span>数据服务</a> </li> 
            <li> <a href="https://www.itjuzi.com/special/lieju" target="_blank"><span class="jzicon lieju-index"></span>猎桔融资</a> </li> 
            <li> <a href="http://www.juzilab.com/" target="_blank"><span class="jzicon juzilab-index"></span>桔子空间</a> </li> 
            <li> <a href="http://tobshe.com/" target="_blank"><span class="jzicon tuopushe-index"></span>拓扑社</a> </li> 
           </ul> 
          </div> 
         </div> </li> 
        -->
       </ul> 

       <div class="usernav"> 
        <div class="usersearch"> 
         <form action="https://www.itjuzi.com/search"> 
          <input type="text" name="key" spellcheck="false" autocomplete="off" placeholder="请输入搜索关键字" /> 
          <button class="jzbtn bg-c" type="submit"><i class="fa fa-search"></i></button> 
         </form> 
        </div> 
        <div class="useradd"> 
         <a target="_blank" href=""><span class="jzbtn c-lined">
          <i class="fa fa-plus"></i> 添加搜藏</span>
        </a> 
        </div> 
        <!-- 未登录 --> 
        <div class="userlogin"> 
         <a class="jzbtn" href="">登录</a>
         <a class="jzbtn" href="">注册</a> 
        </div> 
       </div> 
      </div> 
     </div> 
     <div class="subnavbox"> 
      <div class="boxed"> 
       <div class="cont"> 
        <ul class="subnav nav-comp"> 
        	<li ng-repeat="m in menu"><a href="/fridge?subtype={{m.subType}}&count={{m.count}}"><span>{{m.subType}}</span><i>{{m.count}}</i></a></li>
        </ul> 
       </div> 
      </div> 
     </div> 
    </div> 
   </header> 
   <div class="boxed main"> 
     <div class="sec nobg mobile-block"> 
     <div class="ui-mobile-usersearch"> 
      <form action="https://www.itjuzi.com/search"> 
       <input type="text" name="key" spellcheck="false" autocomplete="off" placeholder="创业公司、投资机构等…" /> 
       <button class="jzbtn bg-c" type="submit"><i class="fa fa-search"></i></button> 
      </form> 
     </div> 
    </div> 
 


    <div class="sec" ng-repeat="book in handbook"> 
     	<div class="titlebar tall"> 
	      <span class="on">{{book.name}}</span> 
	      <i class="rightset"> <a target="_blank" href="https://www.itjuzi.com/investevents">查看全部</a> </i> 
	    </div>
	      <div> 
	       <!-- block 搜索列表区 --> 
	       <div> 
	        <ul class="list-main-icnset thead"> 
	         <li> <i class="cell pic"> </i> <i class="cell maincell"> <span class="t-small">说明书名称</span> </i> <i class="cell"> 品牌 </i> <i class="cell round"> 型号 </i> <i class="cell action"> 关注 </i> </li> 
	        </ul> 
	        <ul class="list-main-icnset"> 
	          <li ng-repeat="sub in book.subType"> 
		            <i class="cell pic"> 
		              <a href=""> 
		                <span class="incicon"><img ng-src="{{sub.imgUrl}}" /></span> 
		              </a> 
		            </i> 
		            <i class="cell maincell"> 
		              <p class="title"><a href="">{{sub.name}}</a></p> 
		              <p class="des">{{sub.productSize}}</p> 
		              <p> 
		                <span class="tags t-small c-gray-aset"> <a href="">{{ sub.productDate | date:'yyyy-MM-dd' }}</a>上市</span>   
		              </p> 
		            </i> 
		            <i class="cell date">{{sub.brand}} </i> 
		            <i class="cell round"> 
		              <a href=""><span class="tag gray">{{sub.version}}</span></a> 
		            </i> 
		            <i class="cell action"> <a href="" class="fa fa-star-o"></a> </i> 
		       </li>   
	        </ul> 
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
   <footer> 
    <div class="footer-info boxed"> 
     <div class="colum"> 
      <ul> 
       <li><b>关于</b></li> 
       <li><a target="_blank" href="">关于我们</a></li> 
       <li><a target="_blank" href="">如何上传说明书</a></li> 
       <li><a target="_blank" href="https://www.itjuzi.com/partners">合作伙伴</a></li> 
       <li><a target="_blank" href="https://www.itjuzi.com/faq">FAQ</a></li> 
      </ul> 
     </div> 
     <div class="colum"> 
      <ul> 
        <li><b>发现</b></li> 
        <li><a target="_blank" href="">数据服务</a></li> 
        <li><a target="_blank" href="">技术咨询</a></li> 
        <li><a target="_blank" href="">定制服务</a></li> 
        <li><a target="_blank" href="">自助建站</a></li> 
      </ul> 
     </div> 

     <div class="colum" > 
      <img src="./img/qrcode-juzi.png" style="height:130px; float:left; margin-right:10px; margin-top:5px"/> 
      <form action="" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate="" style="float:right;"> 
       <ul> 
        <li><b>发说明书给我们</b></li> 
        <li>方便他人，快乐你我</li> 
        <li class="block-footer-getinfo"> 
          <input type="email" value="" name="EMAIL" class="email" id="mce-EMAIL" placeholder="name@92shuomingshu.com" /> 
          <button type="submit" class="jzbtn bg-c">订阅</button> 
        </li> 
        <li class="block-footer-iconlink"> 
          <a href="" target="_blank"><i class="fa fa-weibo"></i></a> <a class="hoversub"> <i class="fa fa-weixin"></i> <span class="subblock iconblock"> <img src="./img/qrcode-juzi.png" /> </span> 
          </a> 
          <a href="http://shang.qq.com/wpa/qunwpa?idkey=92942d"> 
            <i class="fa fa-qq"></i> 
          </a> <a href="mailto:hello@itjuzi.com" target="_blank"><i class="fa fa-envelope-o"></i></a> 
        </li> 
       </ul> 
      </form> 
     </div> 
    </div> 
    <div class="footer-sign"> 
     <div class="boxed">
       92说明书 - 个人说明书信息服务 
      <span class="flr copy"> &copy; 2016-2019 itjuzi.com 蜀ICP备14026526号-2</span> 
     </div> 
    </div> 
   </footer> 
  </div> 
  <script>
    window.site_url = 'https://92shuomingshu.com/';
  </script>  
	 


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery-1.10.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="./js/ie10-viewport-bug-workaround.js"></script>
    <script src="js/lib/angular/angular.js"></script>
	<script src="js/controllers/IndexController.js"></script>

</body>
</html>