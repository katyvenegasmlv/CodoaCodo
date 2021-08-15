<%-- 
    Document   : CompraRealizada
    Created on : 
    Author     : 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    String mail;
    HttpSession sess = request.getSession(false);
    mail=sess.getAttribute("inputmail").toString(); 
    %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
         <link rel="stylesheet" href="fontawesome-free-5.15.3-web\css\all.css" type="text/css">
         <link href="fontawesome-free-5.15.3-web/css/fontawesome.css" rel="stylesheet">
        
        <title>Confirmar Compra</title>
     <script type="text/javascript">
            function eliminar(x) 
            {                               
                   var opcion = confirm("Eliminar Fila?");
                            if (opcion == true) 
                            {  
                           
                            }                
            }       
        
         function modificar(x) 
            {          
              
                  console.log(x)
                   var opcion = confirm("Modificar Fila?");
                            if (opcion == true) 
                            {  
                           
                            }                
            }
        </script> 
 
       
    </head>
    
    <body>
        <h3>Datos de la compra</h3>

        <div class="col-md-12  text-center"> 
            <table class="table table-hover" >
            <thead class="thead-dark">
            <tr>  
                <th scope="col" >Pedido N°</th>
                <th scope="col" >Email</th>
                <th scope="col">CP</th>
                <th scope="col">Calle</th>
                <th scope="col">Altura</th>
                <th scope="col">Producto</th>
                <th scope="col">Cantidad</th>
                <th scope="col">Color</th>
                <th scope="col">Talle</th>
                <th scope="col">Medio de Pago</th>
                <th scope="col">Modificar</th>
                <th scope="col">Eliminar</th>                
            </tr>
            </thead>
             <%           
                     Persistencia base = new Persistencia();
                     ResultSet rs = base.consultaSQL("SELECT * FROM pedidos where email like '" +mail+ "'"+ "and estado_pedido='en_curso'"); 
                        
                     while(rs.next())
                         
                     {
                    %>
                    
                    <tr>
                        <td><input name="ID"  value="<% out.println(rs.getInt("idpedidos")); %>" readonly="true"></td>    
                    <td><% out.println(rs.getString("email")); %></td>
                    <td><% out.println(rs.getString("cp")); %></td>
                    <td><% out.println(rs.getString("calle")); %></td>
                    <td><% out.println(rs.getString("numero")); %></td>
                    <td><% out.println(rs.getString("producto")); %></td>
                    <td><% out.println(rs.getString("cant_producto")); %></td>
                    <td><% out.println(rs.getString("color_prod")); %></td>
                    <td><% out.println(rs.getString("talle_prod")); %></td>
                    <td><% out.println(rs.getString("tipo_tarjeta")); %></td>                 
                    <td><a id="modificar"  name="modificar" href="ModificarDatos?ID=<% out.println(rs.getInt("idpedidos")); %>" onclick="modificar(<%out.println(rs.getInt("idpedidos"));%>)"   ><i class="fas fa-pencil-alt"></i> </a></td>
                    <td><a id="eliminar" name="eliminar" href="EliminarDatos?ID=<% out.println(rs.getInt("idpedidos")); %>" onclick="eliminar(<%out.println(rs.getInt("idpedidos"));%>);"   ><i class="fas fa-trash-alt"></i>   </a></td>
                    </tr>    
                     <%
                      
                      
                    }
                    %>   
                 
        </table> 
        	<div class="col-2">
   
		</div>
        </div> 
    </body>
     <script src="bootstrap/js/bootstrap.min.js" ></script>
    <script src="fontawesome-free-5.15.3-web/js/all.min.js"></script>
    <script src="login.js" ></script>

</html>
  
