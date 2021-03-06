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
	<title>在线阅读｜ 乐道说明书</title>
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="/img/favicon.png" />
	<link rel="apple-touch-icon-precomposed" href="/img/favicon.png" />
	
	<link rel="stylesheet" type="text/css" href="/css/common/fontawesome.css" />
	
	<meta name="Keywords" content=" " />
	<meta name="Description" content=" " />
	
	<link rel="stylesheet" href="./css/pdf.js/viewer.css"/>
	
	<script src="./js/lib/pdf.js/compatibility.js"></script>
	<script src="./js/lib/pdf.js/l10n.js"></script>
	<script src="./js/lib/pdf.js/pdf.js"></script>
	<script src="./js/lib/pdf.js/viewer.js"></script>
<<<<<<< HEAD
	<script src="js/lib/others/modernizr.js"></script>
	 <script src="js/lib/others/ie10-viewport-bug-workaround.js"></script>
    <script src="js/lib/angular/angular.js"></script>
    <script src="js/lib/angular/angular-cookies.min.js"></script>
    <script src="js/app.js"></script>
    <script src="js/controllers/PdfOnlineController.js"></script>
	<script src="js/service/UserService.js"></script>	
=======
	<script src="/js/lib/others/modernizr.js"></script>
>>>>>>> 0a15e237b1fb31f6af8ef4b4cd9b804f3cca0bb6
	<script>
	  window.site_url = 'https://92shuomingshu.com/';
	</script>  
	 
</head>

<body ng-app="app" ng-controller="PdfOnlineController" id="page-onlineview">  
<div id="outerContainer">
	
  <!-- Sidebar -->
  <div id="sidebarContainer">
     <div id="toolbarSidebar">
      <div class="splitToolbarButton toggled">
        <button id="viewThumbnail" class="toolbarButton group toggled" title="显示缩略图" tabindex="2" data-l10n-id="thumbs">
           <span data-l10n-id="thumbs_label">缩略图</span>
        </button>
        <button id="viewOutline" class="toolbarButton group" title="显示文档大纲" tabindex="3" data-l10n-id="outline" disabled="">
           <span data-l10n-id="outline_label">文档大纲</span>
        </button>
        <button id="viewAttachments" class="toolbarButton group" title="显示附件" tabindex="4" data-l10n-id="attachments" disabled="">
           <span data-l10n-id="attachments_label">附件</span>
        </button>
      </div>
    </div>
    <div id="sidebarContent">
      <div id="thumbnailView">
      </div>
      <div id="outlineView" class="hidden">
      </div>
      <div id="attachmentsView" class="hidden">
      </div>
    </div>
  </div>  <!-- sidebarContainer -->

  <div id="mainContainer">
    <div class="findbar doorHanger hiddenSmallView hidden" id="findbar">
      <label for="findInput" class="toolbarLabel" data-l10n-id="find_label">查找：</label>
      <input id="findInput" class="toolbarField" tabindex="91">
      <div class="splitToolbarButton">
        <button class="toolbarButton findPrevious" title="查找词语上一次出现的位置" id="findPrevious" tabindex="92" data-l10n-id="find_previous">
          <span data-l10n-id="find_previous_label">上一页</span>
        </button>
        <div class="splitToolbarButtonSeparator"></div>
        <button class="toolbarButton findNext" title="查找词语后一次出现的位置" id="findNext" tabindex="93" data-l10n-id="find_next">
          <span data-l10n-id="find_next_label">下一页</span>
        </button>
      </div>
      <input type="checkbox" id="findHighlightAll" class="toolbarField" tabindex="94">
      <label for="findHighlightAll" class="toolbarLabel" data-l10n-id="find_highlight">全部高亮显示</label>
      <input type="checkbox" id="findMatchCase" class="toolbarField" tabindex="95">
      <label for="findMatchCase" class="toolbarLabel" data-l10n-id="find_match_case_label">区分大小写</label>
      <span id="findResultsCount" class="toolbarLabel hidden"></span>
      <span id="findMsg" class="toolbarLabel"></span>
    </div>  <!-- findbar -->

    <div id="secondaryToolbar" class="secondaryToolbar hidden doorHangerRight">
     <div id="secondaryToolbarButtonContainer" style="max-height: 539px;">
       <button id="secondaryPresentationMode" class="secondaryToolbarButton presentationMode visibleLargeView" title="切换到演示模式" tabindex="51" data-l10n-id="presentation_mode">
         <span data-l10n-id="presentation_mode_label">演示模式</span>
       </button>

       <button id="secondaryOpenFile" class="secondaryToolbarButton openFile visibleLargeView hidden" title="打开文件" tabindex="52" data-l10n-id="open_file">
         <span data-l10n-id="open_file_label">打开</span>
       </button>

       <button id="secondaryPrint" class="secondaryToolbarButton print visibleMediumView" title="打印" tabindex="53" data-l10n-id="print">
         <span data-l10n-id="print_label">打印</span>
       </button>

       <button id="secondaryDownload" class="secondaryToolbarButton download visibleMediumView" title="下载" tabindex="54" data-l10n-id="download">
         <span data-l10n-id="download_label">下载</span>
       </button>

       <a href="http://mozilla.github.io/pdf.js/web/viewer.html#page=1&zoom=auto,-16,792" id="secondaryViewBookmark" class="secondaryToolbarButton bookmark visibleSmallView" title="当前视图（复制或在新窗口中打开）" tabindex="55" data-l10n-id="bookmark">
         <span data-l10n-id="bookmark_label">当前视图</span>
       </a>

       <div class="horizontalToolbarSeparator visibleLargeView"></div>

       <button id="firstPage" class="secondaryToolbarButton firstPage" title="转到第一页" tabindex="56" data-l10n-id="first_page" disabled="">
         <span data-l10n-id="first_page_label">转到第一页</span>
       </button>
       <button id="lastPage" class="secondaryToolbarButton lastPage" title="转到最后一页" tabindex="57" data-l10n-id="last_page">
         <span data-l10n-id="last_page_label">转到最后一页</span>
       </button>

       <div class="horizontalToolbarSeparator"></div>

       <button id="pageRotateCw" class="secondaryToolbarButton rotateCw" title="顺时针旋转" tabindex="58" data-l10n-id="page_rotate_cw">
         <span data-l10n-id="page_rotate_cw_label">顺时针旋转</span>
       </button>
       <button id="pageRotateCcw" class="secondaryToolbarButton rotateCcw" title="逆时针旋转" tabindex="59" data-l10n-id="page_rotate_ccw">
         <span data-l10n-id="page_rotate_ccw_label">逆时针旋转</span>
       </button>

       <div class="horizontalToolbarSeparator"></div>

       <button id="toggleHandTool" class="secondaryToolbarButton handTool" title="启用手形工具" tabindex="60" data-l10n-id="hand_tool_enable">
         <span data-l10n-id="hand_tool_enable_label">启用手形工具</span>
       </button>

       <div class="horizontalToolbarSeparator"></div>

       <button id="documentProperties" class="secondaryToolbarButton documentProperties" title="文档属性…" tabindex="61" data-l10n-id="document_properties">
         <span data-l10n-id="document_properties_label">文档属性…</span>
       </button>
     </div>
   </div>  <!-- secondaryToolbar -->

   <div id="back2home">
   	<div class="back2home">
   		<a href="javascript:history.go(-1);" class="f-l"><i class="fa fa-chevron-left"></i> <span>返回</span></a>
   		<a class="f-r" ng-click="addFavorite(user.id, handbook)">
			<i class="fav-heart" ng-class="{true: 'fa fa-heart', false: 'fa fa-heart-o'}[handbook.favor == true]"></i> <span>添加到我的收藏</span>
		</a>
   	</div>
   </div>
   <div class="toolbar">
     <div id="toolbarContainer">
       <div id="toolbarViewer">
         <div id="toolbarViewerLeft">
           <button id="sidebarToggle" class="toolbarButton" title="切换侧栏" tabindex="11" data-l10n-id="toggle_sidebar">
             <span data-l10n-id="toggle_sidebar_label">切换侧栏</span>
           </button>
           
           <button id="viewFind" class="toolbarButton group hiddenSmallView" title="在文档中查找" tabindex="12" data-l10n-id="findbar">
              <span data-l10n-id="findbar_label">查找</span>
           </button>
           <div class="splitToolbarButton">
             <button class="toolbarButton pageUp" title="上一页" id="previous" tabindex="13" data-l10n-id="previous" disabled="">
               <span data-l10n-id="previous_label">上一页</span>
             </button>
             <div class="splitToolbarButtonSeparator"></div>
             <button class="toolbarButton pageDown" title="下一页" id="next" tabindex="14" data-l10n-id="next">
               <span data-l10n-id="next_label">下一页</span>
             </button>
           </div>
           <label id="pageNumberLabel" class="toolbarLabel" for="pageNumber" data-l10n-id="page_label">页面：</label>
           <input type="number" id="pageNumber" class="toolbarField pageNumber" value="1" size="4" min="1" tabindex="15" max="14">
           <span id="numPages" class="toolbarLabel">of 14</span>
         </div>
         <div id="toolbarViewerRight">
           <button id="presentationMode" class="toolbarButton presentationMode hiddenLargeView" title="切换到演示模式" tabindex="31" data-l10n-id="presentation_mode">
             <span data-l10n-id="presentation_mode_label">演示模式</span>
           </button>

           <button id="openFile" class="toolbarButton openFile hiddenLargeView hidden" title="打开文件" tabindex="32" data-l10n-id="open_file">
             <span data-l10n-id="open_file_label">打开</span>
           </button>

           <button id="print" class="toolbarButton print hiddenMediumView" title="打印" tabindex="33" data-l10n-id="print">
             <span data-l10n-id="print_label">打印</span>
           </button>

           <button id="download" class="toolbarButton download hiddenMediumView" title="下载" tabindex="34" data-l10n-id="download">
             <span data-l10n-id="download_label">下载</span>
           </button>
           <a href="http://mozilla.github.io/pdf.js/web/viewer.html#page=1&zoom=auto,-16,792" id="viewBookmark" class="toolbarButton bookmark hiddenSmallView" title="当前视图（复制或在新窗口中打开）" tabindex="35" data-l10n-id="bookmark">
             <span data-l10n-id="bookmark_label">当前视图</span>
           </a>

           <div class="verticalToolbarSeparator hiddenSmallView"></div>

           <button id="secondaryToolbarToggle" class="toolbarButton" title="工具" tabindex="36" data-l10n-id="tools">
             <span data-l10n-id="tools_label">工具</span>
           </button>
         </div>
         <div class="outerCenter">
           <div class="innerCenter" id="toolbarViewerMiddle">
             <div class="splitToolbarButton">
               <button id="zoomOut" class="toolbarButton zoomOut" title="缩小" tabindex="21" data-l10n-id="zoom_out">
                 <span data-l10n-id="zoom_out_label">缩小</span>
               </button>
               <div class="splitToolbarButtonSeparator"></div>
               <button id="zoomIn" class="toolbarButton zoomIn" title="放大" tabindex="22" data-l10n-id="zoom_in">
                 <span data-l10n-id="zoom_in_label">放大</span>
                </button>
             </div>
             <span id="scaleSelectContainer" class="dropdownToolbarButton" style="min-width: 86px; max-width: 86px;">
                <select id="scaleSelect" title="缩放" tabindex="23" data-l10n-id="zoom" style="min-width: 108px;">
                 <option id="pageAutoOption" title="" value="auto" selected="selected" data-l10n-id="page_scale_auto">自动缩放</option>
                 <option id="pageActualOption" title="" value="page-actual" data-l10n-id="page_scale_actual">实际大小</option>
                 <option id="pageFitOption" title="" value="page-fit" data-l10n-id="page_scale_fit">适合页面</option>
                 <option id="pageWidthOption" title="" value="page-width" data-l10n-id="page_scale_width">适合页宽</option>
                 <option id="customScaleOption" title="" value="custom"></option>
                 <option title="" value="0.5" data-l10n-id="page_scale_percent" data-l10n-args="{ &quot;scale&quot;: 50 }">50%</option>
                 <option title="" value="0.75" data-l10n-id="page_scale_percent" data-l10n-args="{ &quot;scale&quot;: 75 }">75%</option>
                 <option title="" value="1" data-l10n-id="page_scale_percent" data-l10n-args="{ &quot;scale&quot;: 100 }">100%</option>
                 <option title="" value="1.25" data-l10n-id="page_scale_percent" data-l10n-args="{ &quot;scale&quot;: 125 }">125%</option>
                 <option title="" value="1.5" data-l10n-id="page_scale_percent" data-l10n-args="{ &quot;scale&quot;: 150 }">150%</option>
                 <option title="" value="2" data-l10n-id="page_scale_percent" data-l10n-args="{ &quot;scale&quot;: 200 }">200%</option>
                 <option title="" value="3" data-l10n-id="page_scale_percent" data-l10n-args="{ &quot;scale&quot;: 300 }">300%</option>
                 <option title="" value="4" data-l10n-id="page_scale_percent" data-l10n-args="{ &quot;scale&quot;: 400 }">400%</option>
               </select>
             </span>
           </div>
         </div>
       </div>
       <div id="loadingBar" class="hidden">
         <div class="progress" style="height: 100%; width: 100%;">
           <div class="glimmer">
           </div>
         </div>
       </div>
     </div>
   </div>

   <menu type="context" id="viewerContextMenu">
     <menuitem id="contextFirstPage" label="First Page" data-l10n-id="first_page" title="转到第一页"></menuitem>
     <menuitem id="contextLastPage" label="Last Page" data-l10n-id="last_page" title="转到最后一页"></menuitem>
     <menuitem id="contextPageRotateCw" label="Rotate Clockwise" data-l10n-id="page_rotate_cw" title="顺时针旋转"></menuitem>
     <menuitem id="contextPageRotateCcw" label="Rotate Counter-Clockwise" data-l10n-id="page_rotate_ccw" title="逆时针旋转"></menuitem>
   </menu>

    <div id="viewerContainer" tabindex="0">
      <div id="viewer" class="pdfViewer"></div>
    </div>

     <div id="errorWrapper" hidden="true">
      <div id="errorMessageLeft">
        <span id="errorMessage"></span>
        <button id="errorShowMore" data-l10n-id="error_more_info">更多信息</button>
        <button id="errorShowLess" data-l10n-id="error_less_info" hidden="true">更少信息</button>
      </div>
      <div id="errorMessageRight">
        <button id="errorClose" data-l10n-id="error_close">关闭</button>
      </div>
      <div class="clearBoth"></div>
      <textarea id="errorMoreInfo" hidden="true" readonly="readonly"></textarea>
    </div>
  </div> <!-- mainContainer -->

  <div id="overlayContainer" class="hidden">
    <div id="passwordOverlay" class="container hidden">
      <div class="dialog">
        <div class="row">
          <p id="passwordText" data-l10n-id="password_label">输入密码以打开此 PDF 文件。</p>
        </div>
        <div class="row">
          <!-- The type="password" attribute is set via script, to prevent warnings in Firefox for all http:// documents. -->
          <input id="password" class="toolbarField">
        </div>
        <div class="buttonRow">
          <button id="passwordCancel" class="overlayButton"><span data-l10n-id="password_cancel">取消</span></button>
          <button id="passwordSubmit" class="overlayButton"><span data-l10n-id="password_ok">确定</span></button>
        </div>
      </div>
    </div>
    <div id="documentPropertiesOverlay" class="container hidden">
      <div class="dialog">
        <div class="row">
          <span data-l10n-id="document_properties_file_name">文件名:</span> <p id="fileNameField">-</p>
        </div>
        <div class="row">
          <span data-l10n-id="document_properties_file_size">文件大小:</span> <p id="fileSizeField">-</p>
        </div>
        <div class="separator"></div>
        <div class="row">
          <span data-l10n-id="document_properties_title">标题:</span> <p id="titleField">-</p>
        </div>
        <div class="row">
          <span data-l10n-id="document_properties_author">作者:</span> <p id="authorField">-</p>
        </div>
        <div class="row">
          <span data-l10n-id="document_properties_subject">主题:</span> <p id="subjectField">-</p>
        </div>
        <div class="row">
          <span data-l10n-id="document_properties_keywords">关键词:</span> <p id="keywordsField">-</p>
        </div>
        <div class="row">
          <span data-l10n-id="document_properties_creation_date">创建日期:</span> <p id="creationDateField">-</p>
        </div>
        <div class="row">
          <span data-l10n-id="document_properties_modification_date">修改日期:</span> <p id="modificationDateField">-</p>
        </div>
        <div class="row">
          <span data-l10n-id="document_properties_creator">创建者:</span> <p id="creatorField">-</p>
        </div>
        <div class="separator"></div>
        <div class="row">
          <span data-l10n-id="document_properties_producer">PDF 制作者:</span> <p id="producerField">-</p>
        </div>
        <div class="row">
          <span data-l10n-id="document_properties_version">PDF 版本:</span> <p id="versionField">-</p>
        </div>
        <div class="row">
          <span data-l10n-id="document_properties_page_count">页数:</span> <p id="pageCountField">-</p>
        </div>
        <div class="buttonRow">
          <button id="documentPropertiesClose" class="overlayButton"><span data-l10n-id="document_properties_close">关闭</span></button>
        </div>
      </div>
    </div>
  </div>  <!-- overlayContainer -->
</div> <!-- outerContainer -->	 		
	 
		 
</body>
</html>