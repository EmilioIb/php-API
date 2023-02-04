<?php 

include_once 'db.php';

class Perro extends DB{

    function obtenerPerros(){
        $query = $this->connect()->query('select p.id_perro, p.nombre, r.nombre as raza, c.nombre as color from perros p INNER JOIN razas r on r.id_raza = p.raza INNER JOIN colores c on c.id_color = p.color ORDER BY p.id_perro;');

        return $query;
    }

    function obtenerPerro($id){
        $query = $this->connect()->prepare('select p.id_perro, p.nombre, r.nombre as raza, c.nombre as color from perros p INNER JOIN razas r on r.id_raza = p.raza INNER JOIN colores c on c.id_color = p.color where p.id_perro = :id');
        $query->execute(['id' => $id]);

        return $query;
    }
}


?>