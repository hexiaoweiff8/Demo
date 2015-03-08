<div>
	<input type="button" ng-click="TestResource.get({id:11})"></input>
</div>
<div>
	<input type="button" ng-click="TestResource.save({},card)"></input>
</div>
<div>
	<input type="button" ng-click="TestResource.save({id:11},card)"></input>
</div>
<div>
	<input type="button" ng-click="TestResource.query()"></input>
</div>
<div>
	<input type="button" ng-click="TestResource.remove({id:11})"></input>
</div>
<div>
	<input type="button" ng-click="TestResource.delete({id:11})"></input>
</div>
<input type="text" ng-model="msg"></input>