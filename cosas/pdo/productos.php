<?php
    require_once('conectar.php');  //return al archivo php

    $d=new Datos();
    $datos=$d->getDatos("select p.`ID.Propiedad` as id, barrio, precio, `ID.Venta`, c.nombre as cliente
    from propiedad p
        inner join Cliente c
            on c.`ID.Propiedad` = p.`ID.Propiedad`");
    print_r($datos);
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta htt-equiv="X-UA-Compatible" contenteditable="EI=edge">
        <meta name="viewport" content="width=device-width,initial-scale=1.0">
        <title>Document</title>
        <link href="https://cdnjsdelivr.net/npm/bootstrap@5.1.3/dist/css/boostrap.min.css" rel="stylesheet" />
    </head>
    <body>
        <div class="container">
            <div class="card border-primary mb-3">
            <div class="card-header bg-primary text-white">
                <h1>PHP PDO</h1>
            </div>
            <div class="card-body text-primary">
                <p>
                    <a href="/cosas/pdo/add.php" class="btn btn-success">Crear</a>
                </p>

                <table class="table table-bordered table-striped table-hover">
                    <thead>
                        <tr>
                            <th>id</th>
                            <TH>cliente</TH>
                            <tr>precio</tr>
                            <th>barrio</th>
                            <th>actiones</th>

                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            foreach($datos as $dato)
                            {
                        ?>
                            <tr>
                                <td><?php echo $dato['id']; ?></td>
                                <td><?php echo $dato['cliente']; ?></td>
                                <td><?php echo $dato['precio']; ?></td>
                                <td><?php echo $dato['barrio']; ?></td>
                                <td>
                                    <a href="">Editar</a>
                                    <a href="">Eliminar</a>
                                    <a href="">Guardar</a>
                                    <a href="">Crear</a>
                                </td>
                            </tr> 
                        <?php
                            }   
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>