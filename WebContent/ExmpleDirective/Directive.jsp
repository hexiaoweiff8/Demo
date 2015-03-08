<style type="text/css">
div[contentEditable] {
	cursor: pointer;
	background-color: #D0D0D0;
}
</style>
<div butterBar>123</div>
<input type="button">
234
</input>
<input ng-model='Title' type='text'></input>
<input type="button" ng-click='toggle()' focus>
234
</input>

<hello>123</hello>

<div contentEditable='true' ng-model='content' title='click to edit'>some</div>
<pre>{{content}}</pre>