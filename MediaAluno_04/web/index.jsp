<%-- 
    Document   : index.jsp
    Created on : 18/06/2021, 08:46:30
    Author     : Alexandre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        
        <style>
            body {
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
                
                padding: 15%;
                height: 100vh;
            }

            h3 {
                margin-bottom: 2rem;
                text-align: center;
            }
            
            form {
                min-width: 35rem;
            }
        </style>
        
        <title>Média da nota</title>
    </head>
    <body>
        <h3>Digite as informações a seguir do aluno para calcular sua nota</h3>
        
        <form action="resultadoDaMedia.jsp" method="POST">
            <div class="form-group row">
              <label for="nomeAluno" class="col-sm-2 col-form-label">Nome</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" id="nomeAluno" name="nomeAluno" placeholder="Digite o nome do aluno..." required>
              </div>
            </div>
            <div class="form-group row">
              <label for="nota1" class="col-sm-2 col-form-label">Nota 01</label>
              <div class="col-sm-10">
                <input type="number" class="form-control" id="nota1" name="nota1" placeholder="Digite a primeira nota do aluno..." required>
              </div>
            </div>
            <div class="form-group row">
              <label for="nota2" class="col-sm-2 col-form-label">Nota 02</label>
              <div class="col-sm-10">
                <input type="number" class="form-control" id="nota2" name="nota2" placeholder="Digite a segunda nota do aluno..." required>
              </div>
            </div>
            <div class="form-group row">
              <label for="nota3" class="col-sm-2 col-form-label">Nota 03</label>
              <div class="col-sm-10">
                <input type="number" class="form-control" id="nota3" name="nota3" placeholder="Digite a terceira nota do aluno..." required>
              </div>
            </div>
            <div class="form-group row">
              <div class="col-sm-10">
                <button type="submit" class="btn btn-primary">Enviar</button>
              </div>
            </div>
        </form>
    </body>
</html>
