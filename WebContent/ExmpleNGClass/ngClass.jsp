<style type="text/css">
.green {
	background-color: #FF0000
}
</style>
<table>
	<tr>
		<td><strong>Sender</strong></td>
		<td><strong>Subject</strong></td>
		<td><strong>Date</strong></td>
	</tr>

	<tr ng-repeat="message in messages" ng-class="{green: $index % 2==1}">
		<td>{{message.sender | titleCase}}</td>
		<td><a href="#/view/{{message.id}}">{{message.subject}}</a></td>
		<td>{{message.date}}</td>
	</tr>
</table>