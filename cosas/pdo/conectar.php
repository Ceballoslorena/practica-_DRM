<?php
abstract class conectar
{
    private $con;

    public function conectar()
    {
        try{

            $this->con =new PDO("mysql:dbname=practica_DRM.sql; host=localhost","root","Lorena05*");
              // el primero es la dcn de la base de datos, usuario, contrase;a de la base de datos
        } catch(PDOException $e){
            die("error:".$e);
        }

    
        return $this->con;
    }
    public function setNames()

    {
        return $this->con->query("SET NAMES 'utf-8'");
    }
}

class Datos extends Conectar
// la clase datos hereda de conectar
{
    private $bd;

    public function __construct()
    {

        $this->bd = self::conectar();
        self::setNames();
    }
    public function getDatos($sql)  //trate muchos datos de la consulta

    {
        $datos = $this->bd->prepare($sql);
        //prepara la consulta para que se pueda ejecutar
        $datos->execute();
        return $datos->fetchAll(); // fetchAll trae todas las consulta
        $this->bd=null;
    }
    public function getDato($sql) //trae un solo dato de la consulta
    {
        $datos = $this->bd->prepare($sql);
        $datos->execute();
        return $datos->fetch(); //fetch trae solamente un solo arreglo de la consulta
        $this->bd=null;
    }
    public function setDatos($sql)
    {
        $datos = $this->bd->prepare($sql);
        $datos->execute();
        return $this->bd->lastInsertId();//nos permite 
        //insertar,modificar y eliminar// me permite optener el ultimo id que se creo
    }
}

