<%-- 
    Document   : accesorios
    Created on : Jul 27, 2021, 5:35:27 PM
    Author     : kvenegas3
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" >
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <title>Yoga y Pilates</title>
    </head>
    <body>
       <div>
            <div id="header">
                <div>
                <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="nav-link" href="index.html">Home</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
         <a class="nav-link" href="indumentaria.html">Indumentaria</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="zapatillas.jsp">Calzado</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="accesorios.jsp">Accesorios</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Equipamiento
          </a>
          <ul class="dropdown-menu" id="colormenu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" id="coloritem" href="musculacion.jsp">Musculación</a></li>
            <li><a class="dropdown-item" id="coloritem" href="yoga.jsp">Yoga/Pilates</a></li>
            <li><a class="dropdown-item" id="coloritem" href="nutricion.jsp">Nutricion y Bienestar</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
       <div class="row row-cols-1 row-cols-md-2 g-4">
  <div class="col">
    <div class="card">
      <img src="imagenes/mat_cfunda.PNG" class="card-img-top" id="tam-im" alt="...">
      <div class="card-body">
        <h5 class="card-title">Mat con funda</h5>
        <input class="btn btn-primary" type="submit" value="Comprar">
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      <img src="imagenes/mat_ladillos.PNG" class="card-img-top" id="tam-im" alt="...">
      <div class="card-body">
        <h5 class="card-title">Mat con ladrillos de equilibrio</h5>
        <input class="btn btn-primary" type="submit" value="Comprar">
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      <img src="imagenes/bosu.PNG" class="card-img-top" id="tam-im" alt="...">
      <div class="card-body">
        <h5 class="card-title">Bosu de equilibrio</h5>
        <input class="btn btn-primary" type="submit" value="Comprar">
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      <img src="imagenes/fitball.PNG" class="card-img-top" id="tam-im" alt="...">
      <div class="card-body">
        <h5 class="card-title">Fitball Postural</h5>
       <input class="btn btn-primary" type="submit" value="Comprar">
      </div>
    </div>
  </div>
</div>    
    <script src="bootstrap/js/bootstrap.min.js" ></script>                
    </body>
</html>

