<%-- 
    Document   : modificar
    Created on : 6 dic 2022, 12:55:02
    Author     : windows
--%>

<%@page import="modelo.SociosDAO"%>
<%@page import="modelo.Socios"%>
<%@page import="java.util.List"%>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <title>ActualizasSocio</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/2cbbc87d30.js" crossorigin="anonymous"></script>
    </head>
    <body>  
        
             
         <!---- Inicio navbar -->
         
         <jsp:include page="navbar.jsp" />
       
      
         <!---- Fin navbar -->
      

 <main> 
        <div class="container-fluid" style= "background-color: #2B2929" p-2>
            
 <!---- Inicio titulo  -->
         <div class= "text-center text-white " >
          <p>  <span style="font-size: 40px;font-weight:bold;font-family:'Lucida Sans Unicode', Geneva, Verdana, sans-serif;"> ACTUALIZAR DATOS DE SOCIO </span></p>
        </div>
 <!---- fin titulo  -->
          
                 <div class="row g-3 text-white" >
                    <%
				String id=request.getParameter("id");
				int mid;
				mid=Integer.parseInt(id);				
				Socios resultado=null;
				SociosDAO  socio=new SociosDAO();
				resultado=socio.mostrarSocio(mid);				
		    %>
                    <form class="p-4" method="POST" action="SociosController?accion=actualizar">
                        
                        <div class="row justify-content-md-center mb-3">
                          <div class="col col-lg-4">
                            <label for="id" class="form-label" >Id de Socio</label>
                            <input type="text" class="form-control" id="id" name="id" readonly="true" value=<%=resultado.getIdSocio() %> >                          
                          </div> 
                          <div class="col col-lg-4">
                          
                        </div> 
                       
                        <div class="row justify-content-md-center mb-3">
                          <div class="col col-lg-4">
                            <label for="nombre" class="form-label" >Nombre</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" value=<%=resultado.getNombre() %> required="" >                       
                          </div> 
                           <div class="col col-lg-4">
                            <label for="apellido" class="form-label" >Apellido</label>
                            <input type="text" class="form-control" id="apellido" name="apellido" value=<%=resultado.getApellido() %> required="" >                       
                           </div> 
                          </div> 
                        <div class="row justify-content-md-center mb-3">
                        <div class="col col-lg-4">
                            <label for="direccion" class="form-label" >Direccion</label>
                            <input type="text" class="form-control" id="direccion" name="direccion"value=<%=resultado.getDireccion() %> required="" >                          
                        </div> 
                         <div class="col col-lg-4">
                            <label for="localidad" class="form-label" >Localidad</label>
                            <input type="text" class="form-control" id="localidad" name="localidad" value=<%=resultado.getLocalidad() %> required=""  >                          
                        </div> 
                        </div> 
                        
                         <div class="row justify-content-md-center mb-3">
                          <div class="col col-lg-2">
                            <label for="fnac" class="form-label" >Fecha Nac</label>
                            <input type="date" class="form-control" id="fnac" name="fnac" value=<%=resultado.getFnac() %> required="" >                          
                         </div> 
                          <div class="col col-lg-4">
                            <label for="mail" class="form-label" >E-Mail</label>
                            <input type="text" class="form-control" id="mail" name="mail" value=<%=resultado.getMail()%> required="" >                          
                          </div>  
                          <div class="col col-lg-2">
                            <label for="telefono" class="form-label" >Telefono</label>
                            <input type="text" class="form-control" id="telefono" name="telefono" value=<%=resultado.getTelefono()%> required="">                          
                          </div> 
                         </div> 

                     
                        <div class="d-grid gap-3 d-md-flex justify-content-md-end">
                          <button class="btn btn-primary btn-lg me-md-2" type="submit"><i class="fa-solid fa-floppy-disk"></i></button>
                          <a class="btn btn-primary btn-lg text-center"  href="SociosController?accion="><i class="fa-sharp fa-solid fa-tent-arrow-turn-left"></i></a>
                                              
                        </div>
                          
                    </form>                
                </div>
       </div>  
    
    </main> 
    
         <!---- Inicio de footer  -->

         
         <jsp:include page="footer.jsp" />
       
      
         <!---- Fin footer -->
       
    
    </body>
   
    
    
</html>
