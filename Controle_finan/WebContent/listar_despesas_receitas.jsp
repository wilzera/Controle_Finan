<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="finan.db.*" %>
<%@ page import="finan.dto.*" %>

<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <title>Listar Despesas</title>
    </head>
    <body style="background-color:LightCyan;">
    	
    	<div class="container">
    		<header class="topo">
                <center><h1 class="display-4">Despesas e Receitas</h1></center>
                <hr>
            </header> <br><br>
    	</div>

        <div class="container-fluid">
            <center><h4>Despesas</h4></center> <br>
            <table class="table table-hover">
                <thead>
                    <tr>
                      <th scope="col">#</th>
                      <th scope="col">Data</th>
                      <th scope="col">Descricao</th>
                      <th scope="col">Tipo</th>
                      <th scope="col">Valor</th>
                      <th scope="col">Ações</th>
                    </tr>
                </thead>
            
            <%
                DespesaDao ddao = new DespesaDao();
        
                int cont = 0;
            	double totalDespesa = 0;
                
                for(Despesa desp: ddao.listar()){
                    cont++;
                    totalDespesa += desp.getValor();
                    
            %>
            <tbody>
                <tr>
                   <td><%= cont %></td>
                   <td><%= desp.getData() %></td>
                   <td><%= desp.getDescricao() %></td>
                   <td><%= desp.getTipo() %></td>
                   <td><%= desp.getValor() %></td>
                   <td>
                   	   <a href="index_despesas.jsp?id=<%= desp.getIdDespesa() %>"  class="btn btn-outline-success" > Alterar</a>
                   	   <a href="excluir_despesa.jsp?id=<%= desp.getIdDespesa() %>"  class="btn btn-outline-danger"> Excluir</a>
                   </td>
                 </tr>
             </tbody>
            <% 
                }
            %>
            
	            <tr>
                   <td><strong>VALOR TOTAL</strong></td>
                   <td></td>
                   <td></td>
                   <td></td>
                   <td><strong><%= totalDespesa%></strong></td>
                   <td></td>
	            </tr>
            </table>
            </div> <br><br>
            
            <div class="container">
            <center><h4>Receitas</h4></center> <br>
            <table class="table table-hover">
                <thead>
                    <tr>
                      <th scope="col">#</th>
                      <th scope="col">Data</th>
                      <th scope="col">Descricao</th>
                      <th scope="col">Tipo</th>
                      <th scope="col">Valor</th>
                      <th scope="col">Ações</th>
                    </tr>
                </thead>
            
            <%
                ReceitaDao rdao = new ReceitaDao();
        
                int conta = 0;
                double totalReceitas = 0;
            
                for(Receita rec: rdao.listar()){
                	conta++;
                	totalReceitas += rec.getValor();
            %>
            <tbody>
                <tr>
                   <td><%= conta %></td>
                   <td><%= rec.getData() %></td>
                   <td><%= rec.getDescricao() %></td>
                   <td><%= rec.getTipo() %></td>
                   <td><%= rec.getValor() %></td>
                   <td>
                   	   <a href="index_receitas.jsp?id=<%= rec.getIdReceita() %>" class="btn btn-primary"> Alterar</a>
                   	   <a href="excluir_receita.jsp?id=<%= rec.getIdReceita() %>" class="btn btn-danger"> Excluir</a>
                   </td>
                 </tr>
             </tbody>
            <% 
                }
            %>
            	<tr>
                   <td><strong>VALOR TOTAL</strong></td>
                   <td></td>
                   <td></td>
                   <td></td>
                   <td><strong><%= totalReceitas%></strong></td>
                   <td></td>
	            </tr>
            </table> <br><br><br>
            <h5><strong>TOTAL GERAL: <%= totalDespesa + totalReceitas %></strong></h5>
            <br><br><br>
          	<div class="row">
                <div class="form-group col-md-3">
                    <a href="home.jsp" class="btn btn-danger" onclick="index"> PAGINA ANTERIOR </a>
                </div>
            </div>
            </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>



