<style type="text/css">
.green {
	color: #FF0000
}
.red {
	color: #00FF00
}
.yellow {
	color: #0000FF
}
</style>
<table>
	<tr>
		<td><strong>Sender</strong></td>
		<td><strong>Subject</strong></td>
		<td><strong>Date</strong></td>
	</tr>
		
	<tr ng-repeat="message in messages"  ng-class="{green: message.id==0, red:message.id==1, yellow:message.id==2 }">
		<td>{{message.sender | titleCase}}</td>
		<td><a href="#/view/{{message.id}}">{{message.subject}}</a></td>
		<td>{{message.date}}</td>
	</tr>
</table>