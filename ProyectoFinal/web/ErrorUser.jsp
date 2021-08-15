<%-- 
    Document   : ErrorUser
    Created on : Jul 22, 2021, 8:09:17 PM
    Author     : kvenegas3
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Usuario</title>
    </head>
    <body>
        <form class="row g-3 needs-validation" action="login.jsp" method="post" novalidate>
        <script>alert ("El usuario y/o contraseña son incorrectos")
        window.location='login.jsp';</script>
   
        </form>
    </body>
</html>
