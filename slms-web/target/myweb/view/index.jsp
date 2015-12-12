<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%String path = request.getContextPath();%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <!-- Bootstrap框架必需配置 -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>学生图书馆管理系统</title>
    <!-- Bootstrap 样式 -->
    <link href="<%=path%>/libs/framework/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap 表单验证 -->
    <link href="<%=path%>/libs/framework/formValidator/bootstrapValidator.css" rel="stylesheet">
    <!-- 首页样式 -->
    <link rel="stylesheet" href="<%=path%>/libs/css/index.css">
</head>
<body>
<!-- 固定导航栏 -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- 导航栏标题 -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">学生图书馆管理系统</a>
        </div>
        <!-- 导航栏功能列表 -->
        <div id="navbar" class="navbar-right navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a href="#" target="_blank">Bootstrap</a></li>
                <li>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">用户管理<span
                            class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="<%=path%>/view/user_management/userList.jsp">用户列表</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">图书管理<span
                            class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">图书列表</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">系统设置 <span
                            class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">设置选项</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">关于网站 <span
                            class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">作者</a></li>
                        <li><a href="#">赞助商</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- 内容区域 -->
<div class="content">
    <!-- iframe显示内容 -->
    <iframe width="100%" height="100%"></iframe>
</div>
<!-- jquery core -->
<script src="<%=path%>/libs/framework/jquery/jquery-1.11.3.min.js"></script>
<!-- Bootstrap core -->
<script src="<%=path%>/libs/framework/bootstrap/js/bootstrap.min.js"></script>
<!-- Bootstrap 表单验证 -->
<script src="<%=path%>/libs/framework/formValidator/bootstrapValidator.js"></script>
<!-- 首页面js方法 -->
<script src="<%=path%>/libs/js/index.js"></script>
</body>
</html>

