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
<title>Three</title>
<style>
			body { margin: 0; }
			canvas { width: 100%; height: 100% }
		</style>
</head>
<body>
<script type="text/javascript" src="/JS/3D/three.js"></script>
<script type="text/javascript">
	
	var scene = new THREE.Scene();
	var camera = new THREE.PerspectiveCamera( 75, window.innerWidth/window.innerHeight, 0.1, 1000 );

	var renderer = new THREE.WebGLRenderer();
	renderer.setSize( window.innerWidth, window.innerHeight );
	document.body.appendChild( renderer.domElement );

	var geometry = new THREE.BoxGeometry( 1, 1, 1 );
	var material = new THREE.MeshBasicMaterial( { color: 0xffffcc } );
	var cube = new THREE.Mesh( geometry, material );
	scene.add( cube );

	camera.position.z = 5;

	var render = function () {
		requestAnimationFrame( render );

		cube.rotation.x += 0.1;
		cube.rotation.y += 0.1;
		cube.rotation.z += 0.1;

		renderer.render(scene, camera);
	};

	render();
</script>
	<a href="/">返回</a>
	<div ng-view></div>
</body>
</html>