<%-- 
    Document   : login
    Created on : Jul 14, 2021, 9:21:24 PM
    Author     : kvenegas3
--%>


<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" >

    <title>Login!</title>
  </head>
  <body>
    <h1>Ingrese a su cuenta</h1>
<form class="row g-3 needs-validation" action="Checklogin" method="post" novalidate>

  <div class="col-md-8">
    <label for="validationCustomUsername" class="form-label">Usuario</label>
    <div class="input-group has-validation">
       <input type="email" class="form-control" id="validationCustomUsername" name="inputmail" aria-describedby="inputGroupPrepend" required>
      <div class="invalid-feedback">
        Agregar Usuario.
      </div>
    </div>
  </div>
  <div class="col-md-8">
    <label for="validationCustom03" class="form-label">Contraseña</label>
    <input type="password" class="form-control" id="validationCustom03" name="inputpass" required>
    <div class="invalid-feedback">
      Contraseña invalida.
    </div>
  </div>
  <div class="col-12">
    <button class="btn btn-primary" type="submit">Ingresar</button>
  </div>
  <div class="col-12">
    <label>No tenés cuenta? <a href="NewUser.jsp"> Registrate!</a></label>
  </div>
</form>
  
   
    <script src="bootstrap/js/bootstrap.min.js" ></script>
    <script src="login.js" ></script>
  
  </body>
</html>