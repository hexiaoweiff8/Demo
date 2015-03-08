// 第一种注入decorator
MyApp.value("testValue", "I'am a value.");
MyApp.config(function($provide) {
	$provide.decorator('testValue', function($delegate) {
		return $delegate + 'however, hacked!';

	});
});

MyApp.controller('InjectController', [ '$scope', 'testValue',
		function($scope, testValue) {
			console.log(testValue);
			$scope.content = testValue;
		} ]);

// 第二种注入constant
// 第二次覆盖无效
MyApp.constant('magicNum', 200);
function InjectController1($scope, magicNum) {
	$scope.magicNum = magicNum;
}

(function() {
	var tryToGetNum = {
		getNum : function() {
			return 100;
		}
	};
	MyApp.value('Num', tryToGetNum);
}());

function InjectController2($scope, Num) {
	$scope.Num = Num.getNum();
}

// 第三种注入Value

MyApp.config(function($provide) {
	$provide.value('title', 'title is me.');
});

MyApp.controller('valueController', [ '$scope', 'title',
		function($scope, title) {
			$scope.title = title;
		} ]);

// 第四种注入Service
MyApp.service('showService', function(magicNum) {
	this.getNum = function() {
		return magicNum;
	};
});

function ServiceController($scope, showService) {
	$scope.showService = showService.getNum();
}

function save() {
	console.log("save");
}
