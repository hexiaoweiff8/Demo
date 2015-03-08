MyApp.controller('ngGridController', [ '$scope', function($scope) {
	$scope.data = [ {
		name : "name1",
		age : 20,
		s : 1,
		b : 2,
		c : 3
	}, {
		name : "name2",
		age : 30,
		s : 1,
		b : 2,
		c : 3
	}, {
		name : "name3",
		age : 40,
		s : 1,
		b : 2,
		c : 3
	}, {
		name : "name4",
		age : 50,
		s : 1,
		b : 2,
		c : 3
	} ];
	$scope.MyGrid = {
		data : "data",
		enablePinning : true,
		groupable : true,
		columnDefs : [ {
			field : "name",
			width : 120,
			displayName : "Name",
			pinned : true,
		}, {
			field : "age",
			width : 120,
			displayName : "Age",
			pinned : false,
		}, {
			field : "s",
			width : 120,
			displayName : "S",
			pinned : false,
		}, {
			field : "b",
			width : 120,
			displayName : "B",
			pinned : false,
		}, {
			field : "c",
			width : 120,
			displayName : "C",
			pinned : false
		} ],
		headerRowTemplate:"",
		showColumnMenu:true
//		groups : [ 'name', 'age' ]//分组group 类似sql的group的逻辑效果
	};
} ]);