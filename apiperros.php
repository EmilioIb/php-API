<?php

    include_once 'perro.php';

    class ApiPerros{
        function getAll(){
            $perro = new Perro();
            $perros = array();
            $perros["items"] = array();

            $res = $perro->obtenerPerros();

            if($res->rowCount()){
                while($row = $res->fetch(PDO::FETCH_ASSOC)){
                    $item = array(
                        'id' => $row['id_perro'],
                        'nombre' => $row['nombre'],
                        'raza' => $row['raza'],
                        'color' => $row['color']
                    );
                    array_push($perros['items'], $item);
                }

                //echo json_encode($perros);
                $this->printJSON($perros);
            }
            else{
                //echo json_encode(array('mensaje' => 'No hay elementos registrados'));
                $this->error('No hay elementos registrados');
            }

        }

        function getById($id){
            $perro = new Perro();
            $perros = array();
            $perros["items"] = array();

            $res = $perro->obtenerPerro($id);

            if($res->rowCount() == 1){

                $row = $res->fetch();

                $item = array(
                    'id' => $row['id_perro'],
                    'nombre' => $row['nombre'],
                    'raza' => $row['raza'],
                    'color' => $row['color']
                );
                
                array_push($perros['items'], $item);

                //echo json_encode($perros);
                $this->printJSON($perros);
            }
            else{
                //echo json_encode(array('mensaje' => 'No hay elementos registrados'));
                $this->error('No se encontro el elemento');
            }

        }

        function printJSON($array){
            echo  json_encode($array);
        }

        function error($mensaje){
            echo '<code>' . json_encode(array('mensaje' => $mensaje)) .'</code>';
        }
    }

?>