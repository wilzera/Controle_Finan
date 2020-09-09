<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="finan.db.*" %>
<%@ page import="finan.dto.*" %>

<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <title>Despesas</title>
    </head>
    <body style="background-color:LightCyan;">
    	
    	<%
			int id = Integer.parseInt(request.getParameter("id"));
			DespesaDao ddao = new DespesaDao();
			Despesa desp = ddao.consultar(id);
		%>
    	
        <div class="container-fluid">
            <header class="topo">
                <center><h1 class="display-2 ">Cadastro de Despesas</h1></center>
                <hr>
            </header> <br><br>
            <form action="salvar_despesa.jsp" method="post">
            
            	<input type="hidden" name="idDespesa" value="<%= desp.getIdDespesa() %>"/>
            	
                <div class="row">
                    <div class="form-group col-md-6">
                        <label for="data">Data</label>
                        <input type="date" class="form-control" id="data" name="data" value="<%= desp.getDataString() %>" placeholder="Data">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="descricao">Descrição</label>
                        <input type="text" class="form-control" id="descricao" name="descricao" value="<%= desp.getDescricao() %>" placeholder="Descrição">
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-6">
                        <label for="tipo">Tipo</label>
                        <input type="text" class="form-control" id="tipo" name="tipo" value="<%= desp.getTipo() %>" placeholder="Tipo">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="valor">Valor</label>
                        <input type="number" class="form-control" id="valor" name="valor" value="<%= desp.getValor() %>" placeholder="Valor">
                    </div>
                </div>
                <button type="submit" class="btn btn-outline-primary">Cadastrar</button>
                <a href="home.jsp" class="btn btn-outline-secondary">Voltar</a>
            </form>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>