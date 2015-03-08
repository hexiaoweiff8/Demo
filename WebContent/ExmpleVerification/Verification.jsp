<div>
	<h1>Sign Up</h1>
	<form name="addUserForm" ng-controller="VerifController">
		<div>
			First name:<input ng-model="user.first" type="text" required />
		</div>
		<div>
			Last name:<input ng-model="user.last" type="text" required />
		</div>
		<div>
			Email:<input ng-model="user.email" type="email" required />
		</div>
		<div>
			Age:<input type="number" ng-model="user.age" ng-maxlength="3"
				ng-minlength="1" />
		</div>
		<div><button ngbk-focus ng-disabled="!addUserForm.$valid">Submit</button></div>
	</form>
</div>
