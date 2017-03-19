<?php


$manager = new MongoDB\Driver\Manager("mongodb://mongodb-mongodb-replicas:27017");

$filter= [ 'custom_message' =>  ['$exists' => true ] ];

$query = new MongoDB\Driver\Query($filter);
$rows = $manager->executeQuery('test.test', $query); // $mongo contains the connection object to MongoDB
foreach($rows as $r){
   var_dump($r);
}


?>
