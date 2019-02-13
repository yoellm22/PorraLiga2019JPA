<%-- 
    Document   : home
    Created on : 30-ene-2019, 12:12:48
    Author     : Yoel
--%>

<%@page import="entities.Partido"%>
<%@page import="entities.Equipo"%>
<%@page import="java.util.List"%>
<%@page import="entities.Usuario"%>
<%@page import="entities.Jornada"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
  <html>
    <head>
      <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="css/mycss.css"  media="screen,projection"/>

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>
    <%
        List<Partido> partidos;
        if(String.valueOf(request.getParameter("op")).equals("inicio")){
            partidos=null;
        }else{
            partidos = (List<Partido>)session.getAttribute("partidos");
        }
        
        Partido partido;
        Usuario user = (Usuario) session.getAttribute("usuario");
      
        List jornadas = (List)session.getAttribute("jornadas");
        Jornada jornada=null;
        String number=request.getParameter("idJornada");
  	
        
    %>
    <body>
        <div class="container"> 
            <div class="row light-blue white-text l8">
                <div class="col m4 left-align">
                    <img src="img/liga.png" alt="">
                </div> 
                <div class="col m4"></div>
                <div class="col m4 right-align">
                    <% if(user == null){%>
                        <input data-target="modalregister" class="red white-text btn m btn modal-trigger" type="submit" value="Login&Register">
                        <%}else{%>
                        <form action="Controller?op=logout" method="post">
                            <p>Welcome, <%=user.getNombre()%> <input class="red white-text btn m btn modal-trigger" type="submit" value="Cerrar sesion"></p>
                        </form>
                    <%}%>
                </div>
            </div>
            <div class="cuerpo">
                <div class="row">
                    <div class="col m4 offset-m4">
                    <form action="Controller?op=jornada" name="jornada" method="post">
                            <select name="idJornada" onChange="this.form.submit()">
                                <option value="0" disable selected>Elige una opcion</option>
                                <% for(int i=0;i<jornadas.size();i++){ 
                                jornada = (Jornada)jornadas.get(i);
                                %>
                                <option value="<%=jornada.getIdjornada()%>"><%=jornada.getNombre() %>(<%=jornada.getFechainicio() %> - <%=jornada.getFechafin() %>)</option>
                                <%}%>
                            </select>
                            <label>Selecciona jornada</label>
                    </form>
                     </div>
                </div>
                <script language="javascript" type="text/javascript">	
                    function poncombo(combo,valor)
                    {
                    for(i=0;i<combo.options.length;i++)
                    if (combo.options[i].value==valor)
			combo.options[i].selected=true;
                       }
                </script>
                <script type="text/javascript">	
		poncombo(document.jornada.idJornada,'<%=number%>');
		</script>
                <%
                 if(partidos == null){
                %>
                <div class="row">
                    <div class="col m12">
                        <img class="materialboxed" width="100%" src="img/bg.jpg" alt="">                      
                    </div>                    
                </div>
                <% 
                }else{
                %>
                <div class="row">                    
                    <%for (int i=0; i<partidos.size();i++){
                        partido = partidos.get(i);
                    %>  
			<div class="row grey marg">
                            <div class="col m2 center-align ma">
                                 <% if (user != null) {%>
                                 <input type="button" data-target="modalinfo" class="btn-small red white-text modal-trigger" value="i"/>
                                <% }%>
                            </div>                     
                            <img class="col m1" src="<%=partido.getLocal().getEscudo()%>">
                            <h4>
                            <span class="col m2 center-align"><%=partido.getLocal().getNombre()%></span>
                            <span class="col m2 center-align"><%=partido.getGoleslocal()%> - <%=partido.getGolesvisitante()%></span>
                            <span class="col m2 center-align"><%=partido.getVisitante().getNombre()%></span>
                            </h4>
                            <img class="col m1" src="<%=partido.getVisitante().getEscudo()%>">
                            <div class="col m2 center-align ma">
                                <% if (user != null) {%>
                                <input data-target="modalapuesta" class="btn-small red white-text btn modal-trigger" value="Apuesta"/>
                                <% }%>
                            </div>
                            
                        </div>
                  <%} %>
 
                </div>
               <%
                }
               %>
            </div>
        </div>
         <!-- Modal Structure login and register -->
         
         <div id="modalregister" class="modal">
          <div class="modal-content">
            <h4>Login & Register</h4>
            <div class="row">
                <!-- formulario name=registermodal op=register&login -->
                
                <form class="col s12" method="post" name="registermodal" action="Controller?op=login">
                <div class="row">
                  <div class="input-field col s12">
                    <i class="material-icons prefix">featured_play_list</i>
                    <input name="dni" id="icon_prefix" type="text" class="validate">
                    <label for="icon_prefix">DNI</label>
                  </div>
                  <div class="input-field col s12">
                    <i class="material-icons prefix">account_circle</i>
                    <input name="nombre" id="icon_telephone" type="text" class="validate">
                    <label for="icon_telephone">Nombre</label>
                  </div>
                
                </div>
                <div class="modal-footer center">
                  <button class="btn waves-effect waves-light left" type="submit" name="action">Login and register
                    <i class="material-icons right">send</i>
                  </button>
                  <a class="waves-effect waves-light btn modal-close" style="background-color: red">Cancelar</a>
                </div>
              </form>
            </div>
          </div>
          
        </div>
    
      <!--MODAL APUESTA --> 
      <div id="modalapuesta" class="modal">
            <div class="modal-content">
                <div class="row">
                    <form class="col s12" method="post" name="apuestamodal" action="Controller?op=apostar">
                    <div class="col m12"><h4>Apuesta</h4></div>
                    <div class="col m12 center-align" id="TitleModal"><h4>Levante - Eibar</h4></div>
                    <div class="col m6">
                        <input name="gLocal" placeholder="Goles Local" id="gol_local" type="text" class="validate">                       
                    </div>
                    <div class="col m6">
                        <input name="gVisitante" class="blue-text text-darken-2" placeholder="Goles Visitantes" id="gol_visitante" type="text" class="validate">                         
                    </div>
                    <div class="col m12 mar">
                            
                            <a class=" waves-effect waves-light" type="submit" name="action">Apostar
                                    <i class="material-icons right">send</i>
                            </a>
                            <a class=" waves-effect waves-light" name="action">Cancelar
                                    <i class="material-icons right">send</i>
                            </a>
                    </div>
                    </form>
                </div>

            </div>
            <div class="modal-footer">
               
            </div>
      </div>
      
       <!--MODAL INFO --> 
      <div id="modalinfo" class="modal">
            <div class="modal-content">
                <div class="row">
                    <div class="col m12"><h4>Informacion</h4></div>
                    <div class="col m12 center-align" id="TitleModal"><h4>Levante - lega</h4></div>
                    <div class="col m6">
                        <input placeholder="Goles Local" id="gol_local" type="text" class="validate">                       
                    </div>
                    <div>
                        
                    </div>
                </div>

            </div>
            <div class="modal-footer">
               
            </div>
      </div>
      <!-- -->
      <!--JavaScript at end of body for optimized loading-->
      <script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
      <script type="text/javascript" src="js/myjs.js"></script>
    </body>
</html>
        
