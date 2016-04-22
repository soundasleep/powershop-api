<?php

$endpoint_path = "123";
$secret = "456";
$post_data = "789";
echo base64_encode(hash_hmac('sha512', $endpoint_path . "\0" . $post_data, base64_decode($secret), true));

?>
