<%-- 
    Document   : NewUser
    Created on : Jul 23, 2021, 8:32:43 PM
    Author     : kvenegas3
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" >
        <title>Registro</title>
    </head>
    <body>
            <h1>Crear cuenta</h1>
            
           
<form class="row g-3 needs-validation" action="InsertNewUser" method="post" novalidate>

  <div class="col-md-8">
    <label for="validationCustomUsername" class="form-label">Email</label>
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
      Agregar Contraseña.
    </div>
  </div>
    <div class="col-md-8">
    <label for="validationCustom03" class="form-label">Nombre</label>
    <input type="text" class="form-control" id="validationCustom03" name="inputname" required>
    <div class="invalid-feedback">
      Agregar Nombre.
    </div>
  </div>
       <div class="col-md-8">
    <label for="validationCustom03" class="form-label">Apellido</label>
    <input type="text" class="form-control" id="validationCustom03" name="inputapellido" required>
    <div class="invalid-feedback">
      Agregar Apellido.
    </div>
  </div>
  <div class="col-12">
    <button class="btn btn-primary" type="submit">Crear Cuenta</button>
  </div>
  
</form>
  
   
    <script src="bootstrap/js/bootstrap.min.js" ></script>
    <script src="login.js" ></script>
  
    </body>
</html>
