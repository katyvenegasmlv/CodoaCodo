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
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.logging.Level" %>
<%@ page import="java.util.logging.Logger" %>
<%@ page import="javax.servlet.ServletException" %>
<%@ page import="javax.servlet.annotation.WebServlet" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="newpackage.Persistencia" %>
 <%
    //obtengo valor de la variable de sesion    
    String ID;
    HttpSession sess = request.getSession(false);
    ID=sess.getAttribute("ID").toString(); 
    %>



     
<html>
    <head>
        <title>Datos del Pedido</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" >
    </head>
    <body>
        <br><div><h4>Datos del pedido</h4></div></br>
        <form class="row g-3 needs-validation"  novalidate action="ModificarPedido" method="post">
  
     
  <div class="col-md-5">
    <label for="validationCustom05" class="form-label">Telefono</label>
      <%           
                     Persistencia base = new Persistencia();
                      ResultSet rs =base.consultaSQL( "select * from pedidos where idpedidos like '" +ID+ "'"); 
                        
                     while(rs.next())
                         
                     {
                    %>
    <input type="number" class="form-control" id="validationCustom05" name="inputtel"  value=<%out.println(rs.getString("telefono"));%> required>
    <div class="invalid-feedback">
    </div>
  </div>  
   
             <div class="col-md-5">
    <label for="validationCustomUsername" class="form-label">Email</label>
   <div class="input-group has-validation">
    
       <input type="text" class="form-control" id="validationCustomUsername" name="inputmail"  aria-describedby="inputGroupPrepend"  
            value="<% out.println(rs.getString("email")); %>"  readonly="true">
      
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
          base = new Persistencia();
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
      <option selected disabled value=>Seleccionar..</option>
      <option>...</option>
 <%   
         
                     base = new Persistencia();
                      ResultSet rs_loc = base.consultaSQL("SELECT * FROM localidades WHERE idpro_idloc");
                     while(rs_loc.next())

                     {
                    %> 
                  
                    
              <option value="<% out.println(rs_loc.getInt("idpro_idloc")); %>"><% out.println(rs_loc.getString("nombre")); %></option>
                    <%
                    }
                    %> 
    </select>
    <div class="invalid-feedback">
    </div>
  </div>

  <div class="col-md-2">
    <label for="validationCustom05" class="form-label">CP</label>
    <input type="number" class="form-control" id="validationCustom05" name="inputcp" value=<%out.println(rs.getString("cp"));%> placeholder="3932" required>
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
    <input type="text" class="form-control" id="validationCustom05" name="inputcalle" value="<% out.println(rs.getString("calle")); %>" placeholder="Monroe" required>
    <div class="invalid-feedback">
    </div>
  </div>
    <div class="col-md-2">
    <label for="validationCustom05" class="form-label">Numero</label>
    <input type="number" class="form-control" id="validationCustom05" name="inputnum"  value=<% out.println(rs.getString("numero")); %> placeholder="5643" required>
    <div class="invalid-feedback">
    </div>
  </div>
            <div class="col-md-1">
    <label for="validationCustom05" class="form-label">Piso/Depto</label>
    <input type="text" class="form-control" id="validationCustom05" name="inputpiso" value="<% out.println(rs.getString("piso_depto")); %>" placeholder="5C" required>
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
    <input type="number" class="form-control" id="validationCustom02" name="inputntarj" value=<% out.println(rs.getString("n_tarjeta")); %> placeholder="2345434545295735" required>
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
    <select class="form-select" id="validationCustom04" name="inputproducto" value="" required>
      <option selected disabled value="">Seleccionar</option>
      <option>Zapatillas</option>
      <option>Campera</option>
    </select>
    <div class="invalid-feedback">
    </div>
  </div>
  <div class="col-md-2">
    <label for="validationCustom02" class="form-label">Unidades</label>
    <input type="number" class="form-control" id="validationCustom02" name="inputcantprod" value=<% out.println(rs.getString("cant_producto")); %> placeholder="2" required>
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
          <%
                      
                      
                    }
                    %>   
  <div class="col-12">
    <button class="btn btn-primary" type="submit">Modificar Compra</button>
  </div>

</form>
    </body>
     <script src="bootstrap/js/bootstrap.min.js" ></script>
     <script src="login.js" ></script>
</html>
