<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="app">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.gridStyle {
	border: 1px solid rgb(212, 212, 212);
	width: 400px;
	height: 300px
}
</style>
<link rel="stylesheet" type="text/css" href="../CSS/ng-Grid.css" />
<script type="text/javascript" src="../JS/angular.js"></script>
<script type="text/javascript" src="../JS/jquery-1.10.2.js"></script>
<script type="text/javascript" src="../JS/ngGrid-debug.js"></script>
<script type="text/javascript">
	var app = angular.module('app', [ 'ngGrid' ]);
	app.controller('myGrid', [ '$scope', function($scope) {
		$scope.data = [ {
			name : "name1",
			age : 20
		}, {
			name : "name2",
			age : 30
		}, {
			name : "name3",
			age : 40
		}, {
			name : "name4",
			age : 50
		} ];
		$scope.gridOptions = {
			data : "data"
		};
	} ]);
</script>
</head>
<body ng-controller="myGrid">
	<div class="gridStyle" ng-grid="gridOptions"></div>
</body>
</html>