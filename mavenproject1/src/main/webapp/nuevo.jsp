
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Data Soft</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-primary bg-light">
            <a class="navbar-brand" href="#">DataSoft</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Roles <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Permisos</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="usuarios.jsp" >Usuarios</a>
                    </li>

                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
        </nav>
        <br>
    <center>
        <form>
            <div class="card" style="width: 30rem;">
                <div class="card-body">
                    <h2>Registar usuario</h2>
                    <input type="text" name="txtcodigo" class="form-control mt-2" placeholder="Codigo" required>
                    <input type="text" name="txtnombre" class="form-control mt-2" placeholder="Nombre" required>
                    <input type="password" name="txtclave" class="form-control mt-2" placeholder="Clave" required>
                    <input type="submit" class="btn btn-information" name="btn-guardar" value="Guardar">
                </div>
            </div>
        </form>
    </center>
    </body>
</html>
