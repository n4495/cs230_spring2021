<?php
session_start();
session_unset();
//same as $_SESSION = array(); ^
session_destroy();

header("Location: ../index.php");
exit();