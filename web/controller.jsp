<%-- 
    Document   : controller
    Created on : 30-ene-2019, 12:14:21
    Author     : JAVI
--%>

<%@page import="javax.persistence.EntityTransaction"%>
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
        String op = null;
        String sql = null;
        Query q = null;
        
        List<Jornada> listaJornadas;
        List<Partido> listaPartidos;
        Jornada jornada;
        Usuario usuario;
        EntityTransaction transaction;
        
        op = request.getParameter("op");
        
        //JoseC
        RequestDispatcher dispatcher;
        
        if(op.equals("inicio")){
            sql = ("SELECT j FROM Jornada j");
            q.equals(em.createQuery(sql));
            listaJornadas = (List<Jornada>) q.getResultList();
            session.setAttribute("listaJornadas", listaJornadas);
            
            sql = ("SELECT p FROM Partido p");
            q.equals(em.createQuery(sql));
            listaPartidos = (List<Partido>) q.getResultList();
            session.setAttribute("listaPartidos", listaPartidos);
            
            //dispatcher = request.getRequestDispatcher("home.jsp");
            //dispatcher.forward(request, response);
        %>
        <!--<jsp:forward page="home.jsp"/>-->
        <%
            //hecho joseC
        }else if(op.equals("Register&Login")){
        
            String dnilogin = request.getParameter("dnilogeado");
            String nombrelogin = request.getParameter("nombrelogeado");
            
            dispatcher = request.getRequestDispatcher("home.jsp");
            dispatcher.forward(request, response);
        }
        %>
        <!--<jsp:forward page="index.html"/>-->
        <%
        }
        %>
        
    </body>
</html>
