<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container">
	<h2>表格</h2>
	<p>创建响应式表格 (将在小于768px的小型设备下水平滚动)。另外：添加交替单元格的背景色：</p>
	<div class="table-responsive">
		<table class="table table-striped table-bordered">
			<thead>
				<tr>
					<th>#</th>
					<th>Name</th>
					<th>Street</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>Anna Awesome</td>
					<td>Broome Street</td>
				</tr>
				<tr>
					<td>2</td>
					<td>Debbie Dallas</td>
					<td>Houston Street</td>
				</tr>
				<tr>
					<td>3</td>
					<td>John Doe</td>
					<td>Madison Street</td>
				</tr>
			</tbody>
		</table>
	</div>
	<i class="icon-glass"></i>
	<h2>图像</h2>
	<p>创建项应式图片(将扩展到父元素)。 另外：图片以椭圆型展示：</p>
	<img src="/img/glyphicons-halflings.png"
		class="img-responsive img-circle" alt="Cinque Terre" width="304"
		height="236">

	<h2>图标</h2>
	<p>插入图标:</p>
	<p>
		云图标: <span class="glyphicon glyphicon-cloud"></span>
	</p>
	<p>
		信件图标: <span class="glyphicon glyphicon-envelope"></span>
	</p>
	<p>
		搜索图标: <span class="glyphicon glyphicon-search"></span>
	</p>
	<p>
		打印图标: <span class="glyphicon glyphicon-print"></span>
	</p>
	<p>
		下载图标：<span class="glyphicon glyphicon-download"></span>
	</p>
</div>

<div>----------------表格容器-----------</div>
<div class="container">
	<p>Create a responsive table with alternating cell background
		color:</p>

	<div class="table-responsive">
		<table class="table table-striped table-bordered">
			<thead>
				<tr>
					<th>#</th>
					<th>Name</th>
					<th>Street</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>Anna Awesome</td>
					<td>Broome Street</td>
				</tr>
				<tr>
					<td>2</td>
					<td>Debbie Dallas</td>
					<td>Houston Street</td>
				</tr>
				<tr>
					<td>3</td>
					<td>John Doe</td>
					<td>Madison Street</td>
				</tr>
			</tbody>
		</table>
	</div>

</div>


<div>-------------强调----------------</div>
<div>
	<h1>
		我是标题1 h1. <small>我是副标题1 h1</small>
	</h1>
	<h2>
		我是标题2 h2. <small>我是副标题2 h2</small>
	</h2>
	<h3>
		我是标题3 h3. <small>我是副标题3 h3</small>
	</h3>
	<h4>
		我是标题4 h4. <small>我是副标题4 h4</small>
	</h4>
	<h5>
		我是标题5 h5. <small>我是副标题5 h5</small>
	</h5>
	<h6>
		我是标题6 h6. <small>我是副标题6 h6</small>
	</h6>
	<small>本行内容是在标签内</small><br> <strong>本行内容是在标签内</strong><br> <em>本行内容是在标签内，并呈现为斜体</em><br>
	<p class="text-left">向左对齐文本</p>
	<p class="text-center">居中对齐文本</p>
	<p class="text-right">向右对齐文本</p>
	<p class="text-muted">本行内容是减弱的</p>
	<p class="text-primary">本行内容带有一个 warning class</p>
	<p class="text-success">本行内容带有一个 success class</p>
	<p class="text-info">本行内容带有一个 info class</p>
	<p class="text-warning">本行内容带有一个 warning class</p>
	<p class="text-danger">本行内容带有一个 danger class</p>
</div>

<div>-----------------缩写---------------</div>

<abbr title="World Wide Web">WWW</abbr>
<br>
<abbr title="Real Simple Syndication" class="initialism">RSS</abbr>


<div>----------------地址----------------</div>

<address>
	<strong>Some Company, Inc.</strong><br> 007 street<br> Some
	City, State XXXXX<br> <abbr title="Phone">P:</abbr> (123) 456-7890
</address>

<address>
	<strong>Full Name</strong><br> <a href="mailto:#">mailto@somedomain.com</a>
</address>

<div>----------------引用----------------</div>

<blockquote>
	<p>
		这是一个默认的引用实例。这是一个默认的引用实例。这是一个默认的引用实例。这是一个默认的引用实例。这是一个默认的引用实例。这是一个默认的引用实例。这是一个默认的引用实例。这是一个默认的引用实例。</p>
</blockquote>
<blockquote>
	这是一个带有源标题的引用。<small>Someone famous in <cite
		title="Source Title">Source Title</cite></small>
</blockquote>
<blockquote class="pull-right">
	这是一个向右对齐的引用。<small>Someone famous in <cite title="Source Title">Source
			Title</cite></small>
</blockquote>

<div>-----------------列表---------------</div>

<h4>有序列表</h4>
<ol>
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
  <li>Item 4</li>
</ol>
<h4>无序列表</h4>
<ul>
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
  <li>Item 4</li>
</ul>
<h4>未定义样式列表</h4>
<ul class="list-unstyled">
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
  <li>Item 4</li>
</ul>
<h4>内联列表</h4>
<ul class="list-inline">
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
  <li>Item 4</li>
</ul>
<h4>定义列表</h4>
<dl>
  <dt>Description 1</dt>
  <dd>Item 1</dd>
  <dt>Description 2</dt>
  <dd>Item 2</dd>
</dl>
<h4>水平的定义列表</h4>
<dl class="dl-horizontal">
  <dt>Description 1</dt>
  <dd>Item 1</dd>
  <dt>Description 2</dt>
  <dd>Item 2</dd>
</dl>
<div>-------------包裹--------------</div>
<pre>
  &lt;article&gt;
    &lt;h1&gt;Article Heading&lt;/h1&gt;
  &lt;/article&gt;
</pre>

<div>--------------基本表格-------------</div>
<!-- table table-condensed 精简表格 table table-hover 悬停表格 table table-bordered 边框表格 table table-striped  表格条纹布局-->
<table class="table">
   <caption>基本的表格布局</caption>
   <thead>
      <tr>
         <th>名称</th>
         <th>城市</th>
      </tr>
   </thead>
   <tbody>
      <tr>
         <td>Tanmay</td>
         <td>Bangalore</td>
      </tr>
      <tr>
         <td>Sachin</td>
         <td>Mumbai</td>
      </tr>
   </tbody>
</table>


<div>-------------------上下文类-----------------</div>


<table class="table">
   <caption>上下文表格布局</caption>
   <thead>
      <tr>
         <th>产品</th>
         <th>付款日期</th>
         <th>状态</th>
      </tr>
   </thead>
   <tbody>
      <tr class="active">
         <td>产品1</td>
         <td>23/11/2013</td>
         <td>待发货</td>
      </tr>
      <tr class="success">
         <td>产品2</td>
         <td>10/11/2013</td>
         <td>发货中</td>
      </tr>
      <tr  class="warning">
         <td>产品3</td>
         <td>20/10/2013</td>
         <td>待确认</td>
      </tr>
      <tr  class="danger">
         <td>产品4</td>
         <td>20/10/2013</td>
         <td>已退货</td>
      </tr>
   </tbody>
</table>

<div>----------------------响应式表格-------------------</div>

<div class="table-responsive">
   <table class="table">
      <caption>响应式表格布局</caption>
      <thead>
         <tr>
            <th>产品</th>
            <th>付款日期</th>
            <th>状态</th>
         </tr>
      </thead>
      <tbody>
         <tr>
            <td>产品1</td>
            <td>23/11/2013</td>
            <td>待发货</td>
         </tr>
         <tr>
            <td>产品2</td>
            <td>10/11/2013</td>
            <td>发货中</td>
         </tr>
         <tr>
            <td>产品3</td>
            <td>20/10/2013</td>
            <td>待确认</td>
         </tr>
         <tr>
            <td>产品4</td>
            <td>20/10/2013</td>
            <td>已退货</td>
         </tr>
      </tbody>
   </table>
</div>  

<div>-----------------------表单布局---------------------</div>

<form role="form">
   <div class="form-group">
      <label for="name">名称</label>
      <input type="text" class="form-control" id="name" 
         placeholder="请输入名称">
   </div>
   <div class="form-group">
      <label for="inputfile">文件输入</label>
      <input type="file" id="inputfile">
      <p class="help-block">这里是块级帮助文本的实例。</p>
   </div>
   <div class="checkbox">
      <label>
      <input type="checkbox"> 请打勾
      </label>
   </div>
   <button type="submit" class="btn btn-default">提交</button>
</form>


<div>--------------------------内联表单----------------------</div>

<form class="form-inline" role="form">
   <div class="form-group">
      <label class="sr-only" for="name">名称</label>
      <input type="text" class="form-control" id="name" 
         placeholder="请输入名称">
   </div>
   <div class="form-group">
      <label class="sr-only" for="inputfile">文件输入</label>
      <input type="file" id="inputfile">
   </div>
   <div class="checkbox">
      <label>
      <input type="checkbox"> 请打勾
      </label>
   </div>
   <button type="submit" class="btn btn-default">提交</button>
</form>

<div>------------------------水平表单-----------------------</div>

<form class="form-horizontal" role="form">
   <div class="form-group">
      <label for="firstname" class="col-sm-2 control-label">名字</label>
      <div class="col-sm-10">
         <input type="text" class="form-control" id="firstname" 
            placeholder="请输入名字">
      </div>
   </div>
   <div class="form-group">
      <label for="lastname" class="col-sm-2 control-label">姓</label>
      <div class="col-sm-10">
         <input type="text" class="form-control" id="lastname" 
            placeholder="请输入姓">
      </div>
   </div>
   <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
         <div class="checkbox">
            <label>
               <input type="checkbox"> 请记住我
            </label>
         </div>
      </div>
   </div>
   <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
         <button type="submit" class="btn btn-default">登录</button>
      </div>
   </div>
    <div class="form-group">
    <label for="name">标签</label>
    <input type="text" class="form-control" placeholder="文本输入">
     <input type="text" class="form-control" placeholder="文本输入">
  </div>
</form>