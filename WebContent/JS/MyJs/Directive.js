MyApp.directive('butterBar', [ '$rootScope', function($rootScope) {
	return {
		link : function(scope, element, attrs) {
			element.addClass('hide');

			$rootScope.$on('$routeChangeStart', function() {
				element.removeClass('hide');
			});

			$rootScope.$on('$routeChangeSuccess', function() {
				element.addClass('hide');
			});
		}
	};
} ]);

MyApp.directive('focus', function() {
	return {
		link : function(scope, element, attrs, ctrl) {
			element[0].focus();
		}
	};
});

// 指令
MyApp.directive('hello', [
		'$http',
		function($http) {
			return {
				restrict : 'E',
				template : "<input ng-model='Title' type='text'></input>"
						+ "<input type='button' ng-click='toggle()' focus>",
				transclude : true,
				scope : true,
				link : function(scope, elements, attrs, ctrl) {
					elements.bind('keyup', function() {
						alert(111);
					});
					scope.Title = 'yooo';
					scope.toggle = function() {
						scope.Title = 'ccc';
					};
				},
				compile : function(tElement, tAttrs, transclude) {
					return {
						pre : function(scope, iElement, iAttrs, ctrl) {
						},
						post : function(scope, iElement, iAttrs, ctrl) {
						}
					};
				}
			};
		} ]);
