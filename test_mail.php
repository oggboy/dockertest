<?php
$to = "yuanwei3-iri@360.cn";         // 邮件接收者
$subject = "php发送的邮件";                // 邮件标题
$message = "Hello! 这是邮件的内容。";  // 邮件正文
$from = "qixiao@qixiao.360.cn";   // 邮件发送者
$headers = "From:" . $from;         // 头部信息设置
mail($to,$subject,$message,$headers);
echo "邮件已发送";
?>
