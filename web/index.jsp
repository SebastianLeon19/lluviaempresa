

<html>
<head>
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #860606;
}

li {
  float: left;
}

li a, .dropbtn {
  display: inline-block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

li.dropdown {
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {background-color: #f1f1f1;}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
</head>
<body style="background-color: #00B6A0">

<ul>
  
  <li>  <a  href="Controlador?accion=listar">Listado Personal <img src="iconos/lista.png" height="40"></a></li>
  <li><a href="Controlador?accion=MosEmpleados">Empleados <img src="iconos/empleado.png" height="40"></a></li>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Cargos <img src="iconos/equipo.png" height="40"></a>
    <div class="dropdown-content">
     <a  href="Controlador?accion=listarCargo">Listar cargo</a>
       <a href="Controlador?accion=addCargo">Nuevo Cargo</a>
     
      <a  href="Controlador?accion=MostrarDepartamento">Ver departamento</a>
     
    </div>
  </li>
</ul>

<h2>Menu de Empleados y departamentos</h2>
<p> <img src="iconos/empleado.png"  height="100"></p>

</body>
</html>