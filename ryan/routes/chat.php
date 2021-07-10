<?php

// require __DIR__ . '/../config/db.php';
require __DIR__ . '/../vendor/autoload.php';
$app = new \Slim\App;


$app->get('/chat/all', function ($request, $response) {
    $sql = "SELECT * FROM question2_users";

    try {

        $db = new db();
        $conn = $db->connect();
        $stmt = $conn->query($sql);
        $users = $stmt->fetchAll(PDO::FETCH_OBJ);
        $db = null;
        $response->getBody()->write(json_encode($users));
        return $response
            ->withHeader('content-type', 'application/json')
            ->withStatus(200);
    } catch (PDOException $e) {
        $error = array(
            "message" => $e->getMessage()
        );
        $response->getBody()->write(json_encode($error));
        return $response
            ->withHeader('content-type', 'application/json')
            ->withStatus(500);
    }
});


$app->get('/chat/{id}', function ($request, $response, $args) {
    $id = $args['id'];
    $sql = "SELECT * FROM question2_chat WHERE chat_id = $id";

    try {

        $db = new db();
        $conn = $db->connect();
        $stmt = $conn->query($sql);
        $users = $stmt->fetchAll(PDO::FETCH_OBJ);
        $db = null;
        $response->getBody()->write(json_encode($users));
        return $response
            ->withHeader('content-type', 'application/json')
            ->withStatus(200);
    } catch (PDOException $e) {
        $error = array(
            "message" => $e->getMessage()
        );
        $response->getBody()->write(json_encode($error));
        return $response
            ->withHeader('content-type', 'application/json')
            ->withStatus(500);
    }
});
