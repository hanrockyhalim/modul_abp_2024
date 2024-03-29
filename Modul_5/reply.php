<?php
if(isset($_POST['msg'])){
    $message = $_POST['msg'];
    echo "<p>You shouted: $message</p>";
}
?>
