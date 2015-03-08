var MyApp = angular.module("mail", [ 'ngGrid', 'ngRoute', 'ngResource' ]);

function emailRouteConfig($routeProvider) {
	$routeProvider.when('/', {
		controller : 'menuController',
		templateUrl : "/Menu.jsp"
	}).when('/mail/', {
		controller : 'ListController',
		templateUrl : "/ExmpleMail/list.jsp"
	}).when('/view/:id', {
		controller : 'DetailController',
		templateUrl : "/ExmpleMail/detail.jsp"
	}).when('/verif/', {
		controller : 'VerifController',
		templateUrl : "/ExmpleVerification/Verification.jsp"
	}).when('/direc/', {
		controller : 'DirecController',
		templateUrl : "/ExmpleDirective/Directive.jsp"
	}).when('/inject/', {
		controller : 'InjectController',
		templateUrl : "/ExmpleInject/Inject.jsp"
	}).when('/resource/', {
		controller : 'resController',
		templateUrl : "/ExmpleResource/Resource.jsp"
	}).when('/ngClass/', {
		controller : 'ngClassController',
		templateUrl : "/ExmpleNGClass/ngClass.jsp"
	}).when('/ngGrid/', {
		controller : 'ngGridController',
		templateUrl : "/ExmpleNgGrid/ngGrid.jsp"
	}).when('/game/', {
		controller : 'gameController',
		templateUrl : "/game/game.jsp"
	}).when('/bootstrap/', {
		controller : 'bootstrapController',
		templateUrl : "/Bootstrap/BootstrapIndex.jsp"
	}).otherwise({
		redirectTo : "/"
	});
}
// 增加过滤器
MyApp.filter('titleCase', function() {

	var titleCaseFilter = function(input) {
		return input + "Yoo";
	};
	return titleCaseFilter;

});
// directive表及替换
MyApp.directive('ngbkFocus', function() {
	return {
		link : function(scope, element, attrs, controller) {
			element[0].focus();
			console.log(element[0]);
		}
	};
});

// 测试Factory Service Provider
MyApp.factory('MyList', [ '$resource', function($resource) {
	return $resource('/MyList/:id', {
		id : '@id'
	});
} ]);

// 移除头
// MyApp.config([ '$httpProvider', function($httpProvider) {
// delete $httpProvidor.headers.common['X-Requested-With'];
// }]);

MyApp.factory('testFactory', function() {
	return {
		SayHello : function() {
			return function() {
				alert(123);
			};
		},
		SayGoodBye : function() {
			return "g";
		}
	};
});

MyApp.provider('testProvider', function() {
	this.a = 'yooo factory';
	this.$get = function() {
		return this.a;
	};
});

MyApp.service('testService', function() {
	this.sayH = function() {
		return 'h';
	};

	this.sayG = function() {
		return 'g';
	};
});

MyApp.config(emailRouteConfig);

messages = [ {
	id : 0,
	sender : "jojo@sina.com",
	subject : "hi, boy.",
	date : "2014-6-9",
	recipient : [ "yaya@sina.com" ],
	message : "you baby is coming!"
}, {
	id : 1,
	sender : "hexiaoweiff8@sina.com",
	subject : "hi, gril.",
	date : "2014-6-9",
	recipient : [ "yaya@sina.com" ],
	message : "you baby was coming!"
}, {
	id : 2,
	sender : "hexiaoweiff7@sina.com",
	subject : "hi, gay.",
	date : "2014-6-9",
	recipient : [ "yaya@sina.com" ],
	message : "you baby was come!"
} ];

DirecController.inject = [ "$scope", "$resource" ];
function DirecController($scope) {

}

// 使用注入
MyApp.$inject = [ '$scope', 'MyList', '$http', '$q' ];
function menuController($scope, MyList, $http, $q, testFactory, testProvider,
		testService) {
	$scope.mylist = MyList;
	console.log($scope.mylist);

	console.log(testFactory.SayHello());
	console.log(testService.sayH());
	console.log(testProvider);

	var d = $q.defer();
	var f = function() {
		alert("加载了");
		d.resolve("加载后");
		d.reject('家在前');
	};

	d.promise.then(f);
}

function VerifController($scope, $http) {
	$http.get("/TestAngularJS", {
		header : {
			Authorization : "Basic"
		},
		cache : true
	}).success(function(data, status, header, config) {
		$scope.items = data;
	});
	$scope.$watch("user.first", function() {
	});
}

function ListController($scope) {
	$scope.messages = messages;
	$scope.isError = false;
	$scope.isWarning = true;
}

function DetailController($scope, $routeParams) {
	$scope.message = messages[$routeParams.id];
}

function ngClassController($scope)
{
	$scope.messages=[{sender:"123",subject:"234",date:"2014-1-1", id:1},{sender:"123",subject:"234",date:"2014-1-1", id:3},{sender:"123",subject:"234",date:"2014-1-1", id:2}];
}

function bootstrapController($scope)
{
	
}