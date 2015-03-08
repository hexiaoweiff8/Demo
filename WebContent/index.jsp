<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="mail" lang="en">
<head>
<style type="text/css">
.error { 
background-color: red; 
} 
.warning { 
background-color: yellow; 
} 
</style>
<link rel="stylesheet" type="text/css" href="/CSS/ng-Grid.css" />
<link rel="stylesheet" href="/CSS/bootstrap.3.2.0.min.css">
<script type="text/javascript" src="/JS/angular.js"></script>
<script type="text/javascript" src="/JS/angular-route.js"></script>
<script type="text/javascript" src="/JS/angular-resource.js"></script>
<script type="text/javascript" src="/JS/jquery-1.10.2.js"></script>
<script type="text/javascript" src="/JS/ngGrid-debug.js"></script>

<script type="text/javascript" src="/JS/MyJs/controller.js"></script>
<script type="text/javascript" src="/JS/MyJs/Inject.js"></script>
<script type="text/javascript" src="/JS/MyJs/Directive.js"></script>
<script type="text/javascript" src="/JS/MyJs/Resource.js"></script>
<script type="text/javascript" src="/JS/MyJs/ngGrid.js"></script>
<script src="/JS/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="/">返回</a>
	<div ng-view></div>
</body>
</html>