<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 
<html class=" juzi js flexbox no-touch opacity csstransforms3d svg" lang="">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> 
  <meta charset="utf-8" /> 
  <title>首页</title> 
  <meta name="viewport" content="width=device-width" /> 
  <link rel="shortcut icon" href="./img/favicon.png" /> 
  <link rel="apple-touch-icon-precomposed" href="./img/favicon.png" /> 
  <meta name="Keywords" content=" " /> 
  <meta name="Description" content=" " /> 
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="./css/pages/home.css" />
  <link rel="stylesheet" type="text/css" href="./css/pages/fontawesome.css" /> 
  <script src="./js/modernizr.js"></script> 
  <script src="js/lib/angular/angular.js"></script>
  <script src="js/controllers/FridgeController.js"></script>
 </head> 
 <body> 
  <div class="none">
   <img src="./img/favicon.png" />
  </div> 
  <!--[if lt IE 10]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]--> 
  <div class="thewrap" ng-app="" ng-controller="FridgeController"> 
   <header> 
    <div> 
     <div class="navbox"> 
      <div class="boxed"> 
       <a class="logo fll" href=""> <h1 class="seeo">92说明书</h1> </a> 

       <ul class="mainnav"> 
        <li class="tab on"> 
            <a href="">首页</a> 
        </li>
       </ul> 

       <div class="usernav"> 
        <div class="usersearch"> 
         <form action="https://../search"> 
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
         <li><a href="" class="on"><span>空气净化器</span><i>25727</i></a></li> 
         <li><a href=""><span>电视</span><i>18839</i></a></li> 
         <li><a href=""><span>冰箱</span><i>18839</i></a></li> 
         <li><a href=""><span>空调</span><i>14933</i></a></li> 
         <li><a href=""><span>洗衣机</span><i>2270</i></a></li> 
         <li><a href=""><span>热水器</span><i>1682</i></a></li> 
         <li><a href=""><span>净水器</span><i>7078</i></a></li> 
        </ul> 
       </div> 
      </div> 
     </div> 
    </div> 
   </header> 
   <div class="boxed main"> 
     <div class="sec nobg mobile-block"> 
     <div class="ui-mobile-usersearch"> 
      <form action="https://../search"> 
       <input type="text" name="key" spellcheck="false" autocomplete="off" placeholder="请输入搜索关键字" /> 
       <button class="jzbtn bg-c" type="submit"><i class="fa fa-search"></i></button> 
      </form> 
     </div> 
    </div> 
     <div class="sec"> 
      <div> 
       <!-- block 搜索列表区 --> 
       <div> 
        <ul class="list-main-icnset thead"> 
         <li> <i class="cell pic"> </i> <i class="cell maincell"> <span class="t-small">说明书名称</span> </i> <i class="cell date"> 品牌 </i> <i class="cell round"> 型号 </i> <i class="cell action"> 关注 </i> </li> 
        </ul> 
        <ul class="list-main-icnset"> 
          <li ng-repeat="tv in tvs"> 
            <i class="cell pic"> 
              <a href=""> 
                <span class="incicon"><img src="{{tv.imgUrl}}" /></span> 
              </a> 
            </i> 
            <i class="cell maincell"> 
              <p class="title"><a href="">{{tv.name}}</a></p> 
              <p class="des">{{tv.productSize}}</p> 
              <p> 
                <span class="tags t-small c-gray-aset"> <a href="">{{ tv.productDate | date:'yyyy-MM-dd' }}</a>上市</span>   
              </p> 
            </i> 
            <i class="cell date">{{tv.brand}} </i> 
            <i class="cell round"> 
              <a href=""><span class="tag gray">{{tv.version}}</span></a> 
            </i> 
            <i class="cell action"> <a href="" class="fa fa-star-o"></a> </i> 
          </li>
        </ul> 
       </div> 
       <!-- block 分页区 --> 
       <div> 
        <div class="ui-pagechange for-sec-bottom">
         <a href="" class="on">1</a>
         <a href="#" data-ci-pagination-page="2">2</a>
         <a href="#" data-ci-pagination-page="3">3</a>
         <a href="#" data-ci-pagination-page="2">下一页 →</a>
         <a href="#" data-ci-pagination-page="2203">尾页 &raquo;</a> 
        </div> 
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
   
 </body>
</html>