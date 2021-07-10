<?php
require 'vendor/autoload.php';
require 'config/db.php';


$app = new \Slim\App;


$app->get('/', function ($request,  $response, $args) {
    $response->getBody()->write("this is the root directory");

    return $response;
});

//
require __DIR__ . '../routes/chat.php';
$app->run();
