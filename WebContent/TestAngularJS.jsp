<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<script type="text/javascript" src="JS/angular.js"></script>
<script type="text/javascript" src="JS/angular-route.js"></script>
<script type="text/javascript" src="JS/angular-resource.js"></script>
<script type="text/javascript">
	function InControl($scope) {
		$scope.a = "11";
		$scope.rps = [ '1', '2', '3', '4', ]
	}
</script>
<title>Insert title here</title>
</head>
<body ng-controller='InControl'>
	<div ng-repeat="rp in rps">{{rp}}</div>
</body>
</html>