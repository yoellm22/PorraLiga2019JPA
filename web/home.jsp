<%-- 
    Document   : home
    Created on : 30-ene-2019, 12:12:48
    Author     : Yoel
--%>

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

    <body>
      
         <!-- Modal Structure login and register -->
         
         <div id="modal1" class="modal">
          <div class="modal-content">
            <h4>Login & Register</h4>
            <div class="row">
                <!-- formulario name=registermodal op=register&login -->
                
                <form class="col s12" method="post" name="registermodal" action="Controller?op=Register&Login">
                <div class="row">
                  <div class="input-field col s12">
                    <i class="material-icons prefix">featured_play_list</i>
                    <input name="dnilogeado" id="icon_prefix" type="text" class="validate">
                    <label for="icon_prefix">DNI</label>
                  </div>
                  <div class="input-field col s12">
                    <i class="material-icons prefix">account_circle</i>
                    <input name="nombrelogeado" id="icon_telephone" type="text" class="validate">
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
  

<<<<<<< HEAD
  
    <!--JavaScript at end of body for optimized loading-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/materialize.min.js"></script>
    <script type="text/javascript" src="js/myjs.js"></script>
    
  </body>
=======
        
        
        
        
        
      <!--MODAL APUESTA --> 
      <div id="modal1" class="modal">
            <div class="modal-content">
                <div class="row">
                    <div class="col m12"><h4>Apuesta</h4></div>
                    <div class="col m12 center-align" id="TitleModal"><h4>Levante - Eibar</h4></div>
                    <div class="col m6">
                        <input placeholder="Goles Local" id="gol_local" type="text" class="validate">                       
                    </div>
                    <div class="col m6">
                        <input class="blue-text text-darken-2" placeholder="Goles Visitantes" id="gol_visitante" type="text" class="validate">                         
                    </div>
                    <div class="col m12 mar">
                            <a class=" waves-effect waves-light" type="submit" name="action">Apostar
                                    <i class="material-icons right">send</i>
                            </a>
                            <a class=" waves-effect waves-light" name="action">Cancelar
                                    <i class="material-icons right">send</i>
                            </a>
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
>>>>>>> origin/develop
  </html>
        
