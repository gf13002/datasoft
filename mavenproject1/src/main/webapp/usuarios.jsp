
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

    <center>
        <h3>Mantenimiento de usuarios</h3><br>
        <a href="nuevo.jsp" class="btn btn-secundary btn-sm">Agregar</a><br>
        <table id="example" class="table table-striped table-bordered" style="width:70%" >
            <thead>
                <tr>
                    <th>codigo</th>
                    <th>nombre</th>
                    <th>Modificar</th>
                    <th>Eliminar</th>
                    <th>Accesos</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>jperez</td>
                    <td>juan perez</td>
                    <td><button href="modificar.jsp" type="button" class="btn btn-success">Modificar</button></td>
                    <td><button type="button" class="btn btn-danger">Eliminar</button></td>
                    <td><button type="button" class="btn btn-warning">Accesos</button></td>
                </tr>
                <tr>
                    <td>mrecinos</td>
                    <td>Monica Recinos</td>
                    <td><button href="modificar.jsp" type="button" class="btn btn-success">Modificar</button></td>
                    <td><button type="button" class="btn btn-danger">Eliminar</button></td>
                    <td><button type="button" class="btn btn-warning">Accesos</button></td>
                </tr>
            </tbody>
            <tfoot>
                <tr>
                    <th>codigo</th>
                    <th>nombre</th>
                    <th>Modificar</th>
                    <th>Eliminar</th>
                    <th>Accesos</th>
                </tr>
            </tfoot>
        </table>
    </center>
</body>
</html>
