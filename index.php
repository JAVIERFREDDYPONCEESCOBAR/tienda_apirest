<?php
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

require '../vendor/autoload.php';
require '../src/config/db.php';

$app = new \Slim\App;
$app->get('/hola/{name}', function (Request $request, Response $response) {
    $name = $request->getAttribute('name');
    $response->getBody()->write("HOLA, $name");

    return $response;
});



//OJO ESTE COMENTARIO NO VA - al escribir la siguiente línea, probar
//en el navegador

///crear las rutas de clientes
require "../src/routes/Usuarios.php";


$app->run();


//print_r($app->run());
?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  </head>
  <body>

<section id="acciones">
  <div class="col-md-12">
    

<button type="submit" class="btn btn-primary mb-2">Agregar</button>


<button type="submit" class="btn btn-primary mb-2">Modificar</button>


<button type="submit" class="btn btn-primary mb-2">Eliminar</button>


<button type="submit" class="btn btn-primary mb-2">Actualizar</button>


</div>


  <div class="col-md-12">
<form >
  <div class=" ">
    <label for="staticEmail2" >Nombre</label>
    <input type="text"  class="form-control"   id="nombre" name="nombre" value="">
  </div>
    <div class="">
    <label for="staticEmail2" >Apellidos</label>
    <input type="text" class="form-control"  id="apellidos" name="apellidos" value="">
  </div>

  <div class=" ">
    <label for="contrasena" >Password</label>
    <input type="password" class="form-control" id="contrasena" name="contrasena" >
  </div>

    <div  >Telefono</label>
    <input type="text" class="form-control"  id="telefono" name="telefono" value="">
  </div>

    <div class=" ">
    <label for="staticEmail2" >E-mail</label>
    <input type="text"   class="form-control" id="email" name="email" value="">
  </div>

    <div class=" ">
    <label for="staticEmail2" >Direccion</label>
    <input type="text"  class="form-control" id="direccion" name="direccion" value="">
  </div>
    <div class="">
    <label for="staticEmail2" c>Direccion</label>
    <input type="text"  class="form-control"  id="direccion" name="direccion" value="">
  </div>

    <div>
    <label for="staticEmail2" >Ciudad</label>
    <input type="text"   class="form-control" id="ciudad" name="ciudad" value="">
  </div>
  
    <div class="form-group mb-2">
    <label for="staticEmail2" >Departamento</label>
    <input type="text"  class="form-control" id="departamento" name="departamento" value="">
  </div>


  
</form>

  </div>
</section> 


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>



