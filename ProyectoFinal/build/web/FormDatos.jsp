<%-- 
    Document   : FormDatos
    Created on : Jul 22, 2021, 2:06:20 PM
    Author     : kvenegas3
--%>

<%@page import="java.awt.event.ItemEvent"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="javax.servlet.http.HttpSession"%>
<%@ page import="newpackage.Persistencia"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="newpackage.Checklogin"%>
<html>
    <head>
        <title>Datos del Pedido</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" >
    </head>
    <body>
        <br><div><h4>Datos del pedido</h4></div></br>
        
        <div><h5>Datos personales</h5></div>
        <form class="row g-3 needs-validation"  novalidate action="IngresarPedido" method="post">
  <div class="col-md-5">
    <label for="validationCustom01" class="form-label">Nombre</label>
    <input type="text" class="form-control" id="validationCustom01" placeholder="Juan" required>
    <div class="valid-feedback">
    </div>
  </div>
  <div class="col-md-5">
    <label for="validationCustom02" class="form-label">Apellido</label>
    <input type="text" class="form-control" id="validationCustom02" placeholder="Perez" required>
    <div class="valid-feedback">
    </div>
  </div>
 
  <div class="col-md-5">
    <label for="validationCustom05" class="form-label">Telefono</label>
    <input type="number" class="form-control" id="validationCustom05" name="inputtel" placeholder="45456125" required>
    <div class="invalid-feedback">
    </div>
  </div>  
             <div class="col-md-5">
    <label for="validationCustomUsername" class="form-label">Email</label>
   <div class="input-group has-validation">
    
       <input type="text" class="form-control" id="validationCustomUsername" name="inputmail"  aria-describedby="inputGroupPrepend"  
            value="<%HttpSession sess = request.getSession(false);out.println(sess.getAttribute("inputmail").toString());   %>"  readonly="true">
      <div class="invalid-feedback">
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <label for="validationCustom04" class="form-label">Provincia</label>
    <select class="form-select" id="inputprov" name="inputprov" required>
      <option selected disabled value="">Seleccionar...</option>
      <option>...</option>
      <%
         Persistencia base = new Persistencia();
         ResultSet rs_prov = base.consultaSQL("SELECT * FROM provincias");
         while(rs_prov.next())
          {
      %>
      <option value="<% out.println(rs_prov.getInt("provincia_id"));%>"><% out.println(rs_prov.getString("provincia_nombre"));%></option>
      <%
          }
%>
    </select>
    <div class="invalid-feedback">
    </div>
  </div> 
  <div class="col-md-4">
    <label for="validationCustom04" class="form-label">Localidad</label>
    <select class="form-select" id="validationCustom04" name="inputloc" required>
      <option selected disabled value="">Seleccionar...</option>
      <option>...</option>
      
                    <%   
         
                     base = new Persistencia();
                      ResultSet rs = base.consultaSQL("SELECT * FROM localidades WHERE idpro_idloc=" + "'" + request.getParameter("inputprov") + "'");
                     while(rs.next())

                     {
                    %> 
                  
                    
              <option value="<% out.println(rs.getInt("idpro_idloc")); %>"><% out.println(rs.getString("nombre")); %></option>
                    <%
                    }
                    %> 

    </select>
    <div class="invalid-feedback">
    </div>
  </div>
  <div class="col-md-2">
    <label for="validationCustom05" class="form-label">CP</label>
    <input type="number" class="form-control" id="validationCustom05" name="inputcp" placeholder="3932" required>
    <div class="invalid-feedback">
    </div>
  </div>
            <div class="col-md-3">
    <label for="validationCustom04" class="form-label">Tipo de Domicilio</label>
    <select class="form-select" id="validationCustom04" name="inputdom" required>
      <option selected disabled value="">Seleccionar...</option>
      <option>Casa</option>
      <option>Departamento</option>
    </select>
    <div class="invalid-feedback">
    </div>
  </div>
            <div class="col-md-4">
    <label for="validationCustom05" class="form-label">Calle</label>
    <input type="text" class="form-control" id="validationCustom05" name="inputcalle" placeholder="Monroe" required>
    <div class="invalid-feedback">
    </div>
  </div>
    <div class="col-md-2">
    <label for="validationCustom05" class="form-label">Numero</label>
    <input type="number" class="form-control" id="validationCustom05" name="inputnum"  placeholder="5643" required>
    <div class="invalid-feedback">
    </div>
  </div>
            <div class="col-md-1">
    <label for="validationCustom05" class="form-label">Piso/Depto</label>
    <input type="text" class="form-control" id="validationCustom05" name="inputpiso" placeholder="5C" required>
    </div>
  </div>          
  
  <div><h5>Medio de pago</h5></div>
        <form class="row g-3 needs-validation" novalidate>
  <div class="col-md-2">
    <label for="validationCustom04" class="form-label">Tipo de Tarjeta</label>
    <select class="form-select" id="validationCustom04" name="inputttarj" required>
      <option selected disabled value="">Seleccionar</option>
      <option>Debito</option>
      <option>Credito</option>
    </select>
    <div class="invalid-feedback">
    </div>
  </div>
  <div class="col-md-4">
    <label for="validationCustom02" class="form-label">Numero</label>
    <input type="number" class="form-control" id="validationCustom02" name="inputntarj" placeholder="2345434545295735" required>
    <div class="valid-feedback">
    </div>
  </div>
    <div class="col-md-4">
    <label for="validationCustom02" class="form-label">Fecha de Vencimiento</label>
    <input type="month" class="form-control" id="validationCustom02" name="inputnvto" placeholder="10/26" min="2021-07" required>
    <div class="valid-feedback">
    </div>
  </div>
            <div><h5>Producto</h5></div>
        <form class="row g-3 needs-validation" novalidate>
  <div class="col-md-3">
    <label for="validationCustom04" class="form-label">Producto</label>
    <select class="form-select" id="validationCustom04" name="inputproducto" required>
      <option selected disabled value="">Seleccionar</option>
      <option>Zapatillas</option>
      <option>Campera</option>
    </select>
    <div class="invalid-feedback">
    </div>
  </div>
  <div class="col-md-2">
    <label for="validationCustom02" class="form-label">Unidades</label>
    <input type="number" class="form-control" id="validationCustom02" name="inputcantprod" placeholder="2" required>
    <div class="valid-feedback">
    </div>
  </div>
   <div class="col-md-3">
    <label for="validationCustom04" class="form-label">Color</label>
    <select class="form-select" id="validationCustom04" name="inputcolorprod" required>
      <option selected disabled value="">Seleccionar</option>
      <option>Azul</option>
      <option>Blanco</option>
      <option>Negro</option>
      <option>Rojo</option>
      
    </select>
    <div class="invalid-feedback">
    </div>
  </div>
            <div class="col-md-2">
    <label for="validationCustom04" class="form-label">Talle</label>
    <select class="form-select" id="validationCustom04" name="inputtalleprod" required>
      <option selected disabled value="">Seleccionar</option>
      <option>XS</option>
      <option>S</option>
      <option>M</option>
      <option>L</option>
      <option>XL</option>
      
    </select>
    <div class="invalid-feedback">
    </div>
  </div>
  <div class="col-12">
    <button class="btn btn-primary" type="submit">Comprar</button>
  </div>
</form>
    </body>
     <script src="bootstrap/js/bootstrap.min.js" ></script>
     <script src="login.js" ></script>
</html>
