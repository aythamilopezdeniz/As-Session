<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sesión</title>
    </head>
    <body>
        <%
            ArrayList<String> list = null;
            if (session.isNew()) {
                list = new ArrayList();
                session.setAttribute("lista", list);
            }
            list = (ArrayList<String>) session.getAttribute("lista");
            list.add(request.getParameter("nombre"));
            list.add(request.getParameter("apellidos"));
            for (String lista : list) {
                out.println(lista);
            }
        %>
        <a href="index.html">volver</a>
    </body>
</html>