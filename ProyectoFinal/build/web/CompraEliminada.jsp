<%-- 
    Document   : CompraEliminada
    Created on : Aug 11, 2021, 10:06:52 PM
    Author     : kvenegas3
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Compra cancelada</title>
    </head>
    <body>
          <form class="row g-3 needs-validation" action="CompraRealizada.jsp" method="post" novalidate>
        <script>alert ("La compra fue cancelada")
        window.location='CompraRealizada.jsp';</script>
   
        </form>
    </body>
</html>
