<ul class="list-group">
	<li class="list-group-item <?php if($this->tpl_var['method'] == 'index'){ ?> active<?php } ?>">
		<?php if($this->tpl_var['method'] == 'index'){ ?>首页
		<?php } else { ?>
		<a href="index.php?user-center">首页</a>
		<?php } ?>
	</li>
	<li class="list-group-item <?php if($this->tpl_var['method'] == 'privatement'){ ?>active<?php } ?>">
		<?php if($this->tpl_var['method'] == 'privatement'){ ?>隐私管理
		<?php } else { ?>
		<a href="index.php?user-center-privatement">隐私管理</a>
		<?php } ?>
	</li>
	
</ul>