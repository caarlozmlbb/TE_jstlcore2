<%@page import="com.emergentes.modelo.Persona"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if(session.getAttribute("listaper")== null){
                ArrayList<Persona> lista = new ArrayList<Persona>();
                
                lista.add(new Persona(1, "Freddy Condori", "72012345", "fredy@hostmail.com"));
                lista.add(new Persona(2, "German Martinez", "70612345", "gmartinez@gmail.com"));
                lista.add(new Persona(3, "Noel Choque", "79111109", "papanoel@yahoo.es"));
                
                session.setAttribute("listaper", lista);
            }
        %>
        
        
        <h1>Ejemplos de JSTL Core</h1>
        <ul>
            <li><a href="jstl_if.jsp">Ejemplo del if</a></li>
            <li><a href="jstl_choose.jsp">Probando el choose</a></li>
            <li><a href="jstl_foreach.jsp">Recoriendo la coleccion con foreach</a></li>
        </ul>
    </body>
</html>
