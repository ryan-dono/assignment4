<?php
require 'vendor/autoload.php';
require 'config/db.php';


$app = new \Slim\App;


$app->get('/', function ($request,  $response, $args) {
    $response->getBody()->write("this is the root directory");

    return $response;
});
$app->get('/allpic', function ($request,  $response, array $args) {

    $sql = "SELECT * FROM question_4";
    try {
        // Get DB Object
        $db = new db();
        // Connect
        $db = $db->connect();

        $stmt = $db->query($sql);
        $user = $stmt->fetchAll(PDO::FETCH_OBJ);
        $db = null;
        echo json_encode($user);
    } catch (PDOException $e) {
        $data = array(
            "status" => "fail"
        );
        echo json_encode($data);
    }
});


//
require __DIR__ . '../routes/chat.php';
$app->run();
