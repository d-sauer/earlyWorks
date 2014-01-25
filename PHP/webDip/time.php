<?php
$time = '08.06.2011 21:53:33';
$in_format = 'Y-m-d H:i:s';
$out_format = '';
echo 'time:' . $time . '<br/>';
echo 'format:' . $in_format . '<br/>';

$i = strtotime($time);
$myDate = date( 'y-m-d', $i );

echo $myDate;
?>