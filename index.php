<?php

phpinfo();

$manager = new MongoDB\Driver\Manager("mongodb://localhost:27017");
var_dump($manager);

echo "Hello world";

?>
