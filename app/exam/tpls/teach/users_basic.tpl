{x2;if:!$userhash}
{x2;include:header}
<body>
{x2;include:nav}
<div class="container-fluid">
	<div class="row-fluid">
		<div class="main">
			<div class="col-xs-2" style="padding-top:10px;margin-bottom:0px;">
				{x2;include:menu}
			</div>
			<div class="col-xs-10" id="datacontent">
{x2;endif}
				<div class="box itembox" style="margin-bottom:0px;border-bottom:1px solid #CCCCCC;">
					<div class="col-xs-12">
						<ol class="breadcrumb">
							<li><a href="index.php?{x2;$_app}-teach">{x2;$apps[$_app]['appname']}</a></li>
							<li class="active">课程成绩</li>
						</ol>
					</div>
				</div>
				<div class="box itembox" style="padding-top:10px;margin-bottom:0px;">
					<h4 class="title" style="padding:10px;">
						成绩
					</h4>
				
			        <table class="table table-hover table-bordered">
						<thead>
							<tr class="info">
			                    <th><input type="checkbox" class="checkall"/></th>
			                    <th>考场ID</th>
						        <th >考场名称</th>
						        <th style="display:none">考场地区</th>
						        <th>考试科目</th>
						        <th>操作</th>
			                </tr>
			            </thead>
			            <tbody>
			                {x2;tree:$basics['data'],basic,bid}
					        <tr>
								<td>
									<input type="checkbox" name="delids[{x2;v:basic['basicid']}]" value="1"/>
								</td>
								<td>
									{x2;v:basic['basicid']}
								</td>
								<td >
									{x2;v:basic['basic']}
								</td>
								<td style="display:none">
									{x2;$areas[v:basic['basicareaid']]['area']}
								</td>
								<td>
									{x2;$subjects[v:basic['basicsubjectid']]['subject']}
								</td>
								<td>
									<div class="btn-group">
										<a class="btn" href="index.php?exam-teach-users-scorelist&page={x2;$page}&basicid={x2;v:basic['basicid']}{x2;$u}" title="成绩统计"><em class="glyphicon glyphicon-subscript"></em></a>
										<a class="btn" href="index.php?exam-teach-users-exams&page={x2;$page}&basicid={x2;v:basic['basicid']}{x2;$u}" title="主观题批改"><em class="glyphicon glyphicon-saved"></em></a>
									</div>
								</td>
					        </tr>
					        {x2;endtree}
			        	</tbody>
			        </table>
			        <ul class="pagination pull-right">
						{x2;$basics['pages']}
			        </ul>
				</div>
			</div>
{x2;if:!$userhash}
		</div>
	</div>
</div>
{x2;include:footer}
</body>
</html>
{x2;endif}