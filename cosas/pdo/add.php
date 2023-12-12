<?php
require_once('conectar.php');  //return al archivo php

$d=new Datos();
if (isset($_POST['nombre']))
{
    $mensaje="";
    if (filter_var($_POST["nombre"])==false)
    {
        $mensaje="vacio";
    }
    if (filter_var($_POST["precio"])==false)
    {
        $mensaje="vacio";
    }
    if (!empty($mensaje))
    {
        header("Location:add.php? error=0");
    }else
    {
        $sql="insert into productos values(null,'".$_POST['categoria_id']."','".$_POST['nombre']."',
        '".$_POST['precio']."',now());";
        //echo $sql;exist;   se cve si la consulta existe en la base de datos 
        $d->setDatos($sql);
        header("location:add.php?error=0");
    }

}else
{
    $categoria = $d->getDatos("select * from categorias;");

}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta htt-equiv="X-UA-Compatible" contenteditable="EI=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>PHP PDO</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/boostrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <div class="card border-primary mb-3">
        <div class="card-header bg-primary text-white">
            <h1>Agregar</h1>
        </div>
        <div class="card-body text-primary">
           <form action=""method="POST" name="form">// se crea un formulario
            <div class="mb-3">
            <label form="categoria_id">Categoria</label>
            <select name="categoria_id" id="categoria_id"
            class="from-control">
                <?php
                foreach($categoria as $categorias)
                {
                    ?>
                        <option value="<?php echo $categoria['id'];?>"><?php echo $categoria['nombre'];?></option>
                    <?php
                }
                ?>
            </select>
           </div>
        <div class="m-3">
            <label for="nombre" class="form-label">Nombre</label>
            <input type="text" class="form-control" name="nombre"
            id="nombre" />

        </div>
        <div class="mb-3">
            <label for="precio" class="form-label">Precio</label> <input
            type="text" class="form-control" name="precio"
            id="precio"
            required="true"  />
        </div>
        <hr />
            <a href="javascript:void(0);"
            oncli="document.form.submit();"class="btn
            btn-primary">Enviar</a>
           </form>
    </div>
</body>
</head>
</head>
</html>