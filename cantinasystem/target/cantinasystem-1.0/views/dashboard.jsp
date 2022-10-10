<%-- 
    Document   : index.jsp
    Created on : 20 sept. 2022, 13:44:37
    Author     : jels1991@gmail.com
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <%@include file="head.jsp" %>
    
    <body class="hold-transition sidebar-mini sidebar-collapse">
        <div class="wrapper">

            <!-- Preloader -->
            <div class="preloader flex-column justify-content-center align-items-center">
                <img class="animation__shake" src="../css/dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
            </div>
            <%@include file="nav.jsp" %>
            
            <%@include file="body.jsp" %>



        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>