<?php

    include_once 'apiperros.php';

    $api = new ApiPerros();

    if(isset($_GET['id'])){
        $id = $_GET['id'];

        if(is_numeric($id)){
            $api->getById($id);
        }
        else{
            $api->error('ID invalido');
        }
    }
    else{
        $api->getAll();

    }

?>