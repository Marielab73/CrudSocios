<%-- 
    Document   : navbar
    Created on : 26/12/2022, 13:41:17
    Author     : Usuario
--%>
 <nav class="navbar navbar-expand-lg navbar-dark p-2" style="background-color: #2B2929;">
         <div class="container-fluid">
           <a class="navbar-brand" href="#" > 
             <img src="vistas/img/jana.jpg" alt="Logo" width="50" > HealthyFit 
           </a>
           <i class="fa-solid fa-spa text-white"></i>
      
       
        <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent" >
          <ul class="navbar-nav ">
              <li class="nav-item">
               <a class="nav-link active" aria-current="page" href="SociosController?accion=">HOME</a>
             </li>
             <li class="nav-item">
                <a class="nav-link" style="color:white" href="SociosController?accion=nuevo">HACETE SOCIO</a>
             </li>
             <li class="nav-item">
                <a class="nav-link " style="color:white" aria-current="page" href="SociosController?accion=socios">NUESTROS SOCIOS</a>
            </li>
            <li class="nav-item">
                <a class="nav-link " style="color:white" aria-current="page" href="#">CONTACTO</a>
            </li>
            <li class="nav-item">
                <a class="nav-link " style="color:white" aria-current="page" href="#">SEDES</a>
            </li>
          </ul>
            <form class="d-flex" action="SociosController?accion=&" > 
                     <input class="form-control me-2"
                        name="clave"
                        type="search" 
                       placeholder="Socios por Apellido" 
                       aria-label="Search">
                  
                     <button class="btn btn-primary" type="submit" >
                       <i class="fa-sharp fa-solid fa-magnifying-glass"></i>
                     </button> 
              </form>
         </div>
             
      </div>
     </nav>