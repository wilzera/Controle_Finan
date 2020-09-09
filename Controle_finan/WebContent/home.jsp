<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <title></title>
    </head>
    <body style="background-color:LightCyan;">

        <div class="container-fluid">
            <header class="topo">
                <center><h1 class="display-3">Menu</h1></center>
                <hr>
            </header><br><br>

            <div class="row d-flex justify-content-center">
                <div class="form-group col-md-3">
                    <a href="index_despesas.jsp?id=0" class="btn btn-outline-info" onclick="index"> Cadastro de Despesas</a>
                </div>
                <div class="form-group col-md-3">
                    <a href="index_receitas.jsp?id=0" class="btn btn-outline-info" onclick="index"> Cadastro de Receitas </a>
                </div>
            </div> <br>
            <div class="row d-flex justify-content-center">
                <div class="form-group col-md-3">
                    <a href="listar_despesas_receitas.jsp" class="btn btn-outline-info" onclick="index"> Consulta os Registros</a>
                </div>
                <div class="form-group col-md-3">
                    <a href="indexPrincipal.jsp" class="btn btn-warning" onclick="index"> Página anterior </a>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>



