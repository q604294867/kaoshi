<ul class="list-group">
	<li class="list-group-item {x2;if:$method == 'index'} active{x2;endif}">
		{x2;if:$method == 'index'}首页
		{x2;else}
		<a href="index.php?user-center">首页</a>
		{x2;endif}
	</li>
	<li class="list-group-item {x2;if:$method == 'privatement'}active{x2;endif}">
		{x2;if:$method == 'privatement'}隐私管理
		{x2;else}
		<a href="index.php?user-center-privatement">隐私管理</a>
		{x2;endif}
	</li>
	
</ul>