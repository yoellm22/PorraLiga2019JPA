<%-- 
    Document   : controller
    Created on : 30-ene-2019, 12:14:21
    Author     : JAVI
--%>

<%@page import="entities.Usuario"%>
<%@page import="entities.Porra"%>
<%@page import="entities.Partido"%>
<%@page import="entities.Equipo"%>
<%@page import="java.util.List"%>
<%@page import="entities.Jornada"%>
<%@page import="javax.persistence.Query"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>  
        <%
        EntityManager em = (EntityManager)session.getAttribute("em");
        if(em==null){
            em = jpautil.JPAUtil.getEntityManagerFactory().createEntityManager();
            session.setAttribute("em", em);
        }
        String op = "";
        Query q = null;
        
        List<Jornada> listaJornadas;
        List<Equipo> listaEquipos;
        List<Partido> listaPartidos;
        List<Porra> listaPorras;
        List<Usuario> listaUsuarios;
        
       
	RequestDispatcher dispatcher;
        
        if(op.equals("inicio")){
            q.equals("SELECT jornada FROM jornada");
            //Aqui guardo el nombre y el dni
            
            
            dispatcher = request.getRequestDispatcher("home.jsp");
            dispatcher.forward(request, response);
        }else if(op.equals("Register&Login")){
        
            String dnilogin = request.getParameter("dnilogeado");
            String nombrelogin = request.getParameter("nombrelogeado");
            
            dispatcher = request.getRequestDispatcher("home.jsp");
			dispatcher.forward(request, response);
        }
            
            
        %>
    </body>
</html>
