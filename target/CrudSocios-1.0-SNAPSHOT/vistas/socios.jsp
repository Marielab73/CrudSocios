<%-- 
    Document   : socios
    Created on : 6 dic 2022, 12:55:28
    Author     : windows
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.Socios" %>
<%@page import="modelo.SociosDAO" %>
<%@page import="java.util.List"%>



<!DOCTYPE html>
<html>
    <head>
        <title>Socios</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
     
        <script src="https://kit.fontawesome.com/2cbbc87d30.js" crossorigin="anonymous"></script>

    </head>
    
    <body>
        
         <!---- Inicio navbar -->
         
         <jsp:include page="navbar.jsp" />
       
      
         <!---- Fin navbar -->

<main>
    
    <div class="container-fluid" style= "background-color: #2B2929" p-2>
<!---- Inicio titulo  -->
     <div class= "text-center text-white " mb-4>
     <p>  <span style="font-size: 40px;font-weight:bold;font-family:'Lucida Sans Unicode', Geneva, Verdana, sans-serif;"> NUESTROS SOCIOS </span></p>
     </div>
 <!---- fin titulo  -->
        
 <!---- Inicio tabla  -->
             <div class="row p-4">   
                 <table class="table table-secondary" >
                    <thead>
                            <th>Id</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                             <th>Direccion</th>
                             <th>Localidad</th>
                             <th>Fecha Nac.</th>
                             <th>Telefono</th>
                             <th>mail</th>
                             <th>     </th>
                             <th>     </th>
                    </thead>
            
                    
                    <%
                    List<Socios> resultado=null;
                    SociosDAO s1=new SociosDAO();
                    resultado=s1.listarSocios();
                    
                                for(int i=0;i<resultado.size();i++)
				{
				String ruta="SociosController?accion=modificar&id="+resultado.get(i).getIdSocio();	
				String rutaE="SociosController?accion=eliminar&id="+resultado.get(i).getIdSocio();
                                                                                                                           
				%>                
                    
                  <tbody>
                    <tr>
                         <td><%=resultado.get(i).getIdSocio()%></td>
                         <td><%=resultado.get(i).getNombre()%></td>
                         <td><%=resultado.get(i).getApellido()%></td>
                         <td><%=resultado.get(i).getDireccion()%></td>
                         <td><%=resultado.get(i).getLocalidad()%></td>
                         <td><%=resultado.get(i).getFnac()%></td>
                         <td><%=resultado.get(i).getTelefono()%></td>
                         <td><%=resultado.get(i).getMail()%></td>
                         <td class="text-center "> 
                             <a class="btn btn-primary" href=<%=ruta%>> 
                             <i class="fa-solid fa-rotate-right"></i> </a>
                         </td>
                         
                         <td class="text-center " >
                              <a  class="btn btn-danger"href=<%=rutaE%> onclick="return(confirm('¿Esta seguro de eliminar el socio?'))"> 
                               <i class="fa-solid fa-trash"></i> </a>     
                               
                        </td>
                    </tr> 
                    <%
                        }
                    %>
                   </tbody>
                </table>
                
            </div>
            <div class=" col-xs-12 p-2 justify-content-end "/>         
             <a class="btn btn-primary btn-lg text-center"  href="SociosController?accion=nuevo"><i class="fa-solid fa-user-plus"></i> </a>
            </div>
    </div>
                    
   <!---- Fin tabla  -->
   
   </main>
                    
                    
   <!---- Inicio de footer  -->

        
         <jsp:include page="footer.jsp" />
       
      
   <!---- Fin footer -->

      
   <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>   
    </body>
</html>

