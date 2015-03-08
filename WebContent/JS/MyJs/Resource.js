MyApp.factory('TestResource', [ '$resource', function($resource) {
	return $resource('/user/:userId/card/:cardId', {
		userId : 123,
		cardId : 234
	}, {
		charge : {
			method : 'POST',
			params : {
				charge : true
			},
			isArray : false
		}
	});
} ]);

function resController($scope, $http, $q, TestResource) {
	var d = $q.defer();
	d.promise.then(function(res) {
		alert(222);
	}).then(function(res) {
		alert(333);
	});
	$scope.isOver = false;
	count = 0;
//	var delay = function() {
//		console.log(count);
//		var timer;
//		if (count >= 5) {
//			clearTimeout(timer); // 清除延时程序
//		} else {
//			count++;
//			timer = setTimeout(delay, 3000); // 延时循环执行自己
//		}
//	};

//	setTimeout(delay, 3000);
//	console.log("loop over");
	$http.get("/test/").then(function(res) {
		console.log("OK1");
	}, function(error) {
		console.log("NG1");
	}).then(function(res) {
		console.log("OK2");
		return "111";
	}, function(error) {
		console.log("NG2");
	});
}