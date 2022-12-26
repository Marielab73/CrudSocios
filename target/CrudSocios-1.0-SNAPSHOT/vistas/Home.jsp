<%-- 
    Document   : Home
    Created on : 26/12/2022, 16:08:04
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.Socios" %>
<%@page import="modelo.SociosDAO" %>
<%@page import="java.util.List"%>



<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
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
    
        <div class="container-fluid" style= "background-color: #2B2929" >
                
  <!---- Inicio titulo  -->
        <div class= "text-center text-white " mb-4>
            <h5> CONOCE NUESTROS PLANES Y PRECIOS</h5>
        </div>
 <!---- fin titulo  -->
        
                      
  <!---- Inicio carrusel-->
  
      <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
       <div class="carousel-inner">
         <div class="carousel-item active">
          <img src="vistas/img/gym.jpg" class="d-block w-100" alt="gym1">
         </div>
         <div class="carousel-item">
          <img src="vistas/img/img1.jpg" class="d-block w-100" alt="gym2">
         </div>
       <div class="carousel-item">
      <img src="vistas/img/img2.jpg" class="d-block w-100" alt="gym3">
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
       <span class="carousel-control-prev-icon" aria-hidden="true"></span>
       <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
       <span class="carousel-control-next-icon" aria-hidden="true"></span>
       <span class="visually-hidden">Next</span>
     </button>
    </div>

   
  </div>

  <!---- Fin carousel -->     
         
         
   <main/>    
         
         
   <!---- Inicio de footer  -->

        
         <jsp:include page="footer.jsp" />
       
      
   <!---- Fin footer -->

      
   <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>   
    </body>
</html>

