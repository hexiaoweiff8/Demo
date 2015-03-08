first Inject
<form ng-submit="Num=1" name="MyForm" action="">
	<div>
		<input type="text" ng-model="content" />
	</div>

	second Inject

	<div ng-controller="InjectController1">
		<input type="text" ng-model="magicNum" />
	</div>

	<div ng-controller="InjectController2">
		<input type="text" ng-model="Num" />
	</div>

	third Inject

	<div ng-controller="valueController">
		<input type="text" ng-model="title" />
	</div>

	forth Inject

	<div ng-controller="ServiceController">
		<input type="text" ng-model="showService" />
	</div>
	<input type="text" name="MyName" ng-model="user.name" ng-maxlength="3" />
	<span ng-show="MyForm.MyName.$error.maxlength">error</span>
	<input type="submit" />
</form>