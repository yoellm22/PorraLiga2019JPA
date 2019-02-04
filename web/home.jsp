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
                
                <form class="col s12" method="post" name="registermodal" action="Controller?op=register&login">
                <div class="row">
                  <div class="input-field col s12">
                    <i class="material-icons prefix">featured_play_list</i>
                    <input id="icon_prefix" type="text" class="validate">
                    <label for="icon_prefix">DNI</label>
                  </div>
                  <div class="input-field col s12">
                    <i class="material-icons prefix">account_circle</i>
                    <input id="icon_telephone" type="text" class="validate">
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
  

  
    <!--JavaScript at end of body for optimized loading-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/materialize.min.js"></script>
    <script type="text/javascript" src="js/myjs.js"></script>
    
  </body>
  </html>
        
