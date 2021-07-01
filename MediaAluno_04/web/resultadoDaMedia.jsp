<%-- 
    Document   : tabuada
    Created on : 17/06/2021, 12:31:37
    Author     : Alexandre
--%>

<script>
    function goBack() {
        window.history.back();
    }
</script>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    try {
        String nomeAluno = request.getParameter("nomeAluno");
        
        int nota1 = Integer.parseInt(request.getParameter("nota1"));
        int nota2 = Integer.parseInt(request.getParameter("nota2"));
        int nota3 = Integer.parseInt(request.getParameter("nota3"));
        float mediaDasNotas = (nota1 + (2 * nota2) + (2 * nota3) / 5);
        
        if (nomeAluno.equals("")) {
%>
            <p>Digite o nome do aluno!</p>
            <a style="cursor: pointer; color: blue;" onclick="goBack()">Voltar</a>
<%
        } else if (
            (nota1 < 0 || nota2 < 0 || nota3 < 0) 
            || (nota1 > 10 || nota2 > 10 || nota3 > 10)
        ) {
%>
            <p>Digite uma nota válida!</p>
            <a style="cursor: pointer; color: blue;" onclick="goBack()">Voltar</a>
<%
        } else {
            
%>

    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Média da nota do aluno: <%= nomeAluno %></title>

            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

            <style>
                body {
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    flex-direction: column;

                    height: 100vh;
                    width: 100% !important;
                }
                
                .card {
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    flex-direction: column;
                    
                    padding: 1rem;
                }
            </style>
        </head>

        <body>
            <div class="card text-white bg-dark mb-3">
                <div class="card-header">Média final das notas</div>
                <div class="card-body">
                  <h5 class="card-title">Média das notas do aluno: <%= nomeAluno %></h5>
                  <table class="table table-striped table-dark">
                      <tr>
                          <th>Aluno</th>
                          <th>Nota 01</th>
                          <th>Nota 02</th>
                          <th>Nota 03</th>
                          <th>Média das Notas</th>
                      </tr>
                      
                      <tr>
                          <td><%= nomeAluno %></td>
                          <td><%= nota1 %></td>
                          <td><%= nota2 %></td>
                          <td><%= nota3 %></td>
                          <th><%= mediaDasNotas %></th>
                      </tr>
                  </table>
                </div>
            </div>
        </body>
    </html>

<%
    }

    } catch (Exception ex) {
        System.out.println("Valor digitado inválido!");
%>
        <h3>Valor digitado inválido!!!</h3>
        <p>Possíveis erros: <br> Um caractere digitado incorretamente. <br> Uma nota não digitada.</p>
        <a style="cursor: pointer; color: blue;" onclick="goBack()">Voltar</a>
<%
    }
%>
