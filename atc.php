<?php
  session_start();
  $_SESSION['hrg']= $_POST['hrg'];
  $a = $_SESSION['hrg']+$_POST['hrg'];
  echo $a;
?>
