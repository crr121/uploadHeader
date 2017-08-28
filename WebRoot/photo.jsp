<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'photo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<meta charset="utf-8">
	<title>基于amazeui框架头像上传代码</title>
	
	<link rel="stylesheet" type="text/css" href="css/font-awesome.4.6.0.css">
	<link rel="stylesheet" href="css/amazeui.min.css">
	<link rel="stylesheet" href="css/amazeui.cropper.css">
	<link rel="stylesheet" href="css/custom_up_img.css">
	<style type="text/css">
		.up-img-cover {width: 100px;height: 100px;}
		.up-img-cover img{width: 100%;}
	</style>

  </head>
  
  <body>
	  <center>
	<div class="up-img-cover"  id="up-img-touch" >
		<img class="am-circle" alt="点击图片上传" src="img/hu.jpg" data-am-popover="{content: '点击上传', trigger: 'hover focus'}" >
	</div>
	</center>
	<div><a style="text-align: center; display: block;"  id="pic"></a></div>
	
	<!--图片上传框-->
	<div class="am-modal am-modal-no-btn up-frame-bj " tabindex="-1" id="doc-modal-1">
	  <div class="am-modal-dialog up-frame-parent up-frame-radius">
		<div class="am-modal-hd up-frame-header">
		   <label>修改头像</label>
		  <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
		</div>
		<div class="am-modal-bd  up-frame-body">
		  <div class="am-g am-fl">
			<div class="am-form-group am-form-file">
			  <div class="am-fl">
				<button type="button" class="am-btn am-btn-default am-btn-sm">
				  <i class="am-icon-cloud-upload"></i> 选择要上传的文件</button>
			  </div>
			  <input type="file" id="inputImage">
			</div>
		  </div>
		  <div class="am-g am-fl" >
			<div class="up-pre-before up-frame-radius">
				<img alt="" src="" id="image" >
			</div>
			<div class="up-pre-after up-frame-radius">
			</div>
		  </div>
		  <div class="am-g am-fl">
			<div class="up-control-btns">
				<span class="am-icon-rotate-left"  onclick="rotateimgleft()"></span>
				<span class="am-icon-rotate-right" onclick="rotateimgright()"></span>
				<span class="am-icon-check" id="up-btn-ok" url="admin/user/upload.action"></span>
			</div>
		  </div>
		  
		</div>
	  </div>
	</div>
	
	<!--加载框-->
	<div class="am-modal am-modal-loading am-modal-no-btn" tabindex="-1" id="my-modal-loading">
	  <div class="am-modal-dialog">
		<div class="am-modal-hd">正在上传...</div>
		<div class="am-modal-bd">
		  <span class="am-icon-spinner am-icon-spin"></span>
		</div>
	  </div>
	</div>
	
	<!--警告框-->
	<div class="am-modal am-modal-alert" tabindex="-1" id="my-alert">
	  <div class="am-modal-dialog">
		<div class="am-modal-hd">信息</div>
		<div class="am-modal-bd"  id="alert_content">
				  成功了
		</div>
		<div class="am-modal-footer">
		  <span class="am-modal-btn">确定</span>
		</div>
	  </div>
	</div>
	<script src="js/jquery-1.8.3.min.js"></script>
	<script src="js/amazeui.min.js" charset="utf-8"></script>
	<script src="js/cropper.min.js" charset="utf-8"></script>
	<script src="js/custom_up_img.js" charset="utf-8"></script>

  </body>
</html>
