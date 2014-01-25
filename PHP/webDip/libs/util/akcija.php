<?php
if (isset ($_GET['akcija']) || isset ($_POST['akcija'])) {
	if (isset ($_GET['akcija']))
		$forma = $_GET['prikaz'];
	else if (isset ($_POST['akcija']))
		$forma = $_POST['akcija'];

	call_user_func($forma);
}else {
	call_user_func("init");
}
?>