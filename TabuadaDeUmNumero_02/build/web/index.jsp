<%-- 
    Document   : index.jsp
    Created on : 17/06/2021, 12:09:05
    Author     : Alexandre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabúada de um Número escolhido</title>
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        
        <style>
            body {
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
                
                height: 100vh;
            }

            h1 {
                margin-bottom: 2rem;
            }
        </style>
    </head>
    
    <body>
        <h1>Escolher número para ver sua tabúada</h1>
        
        <form class="form-inline" action="tabuada.jsp" method="POST">
            <div class="form-group mx-sm-3 mb-2">
              <label for="inputPassword2" class="sr-only">Número</label>
              <input type="number" class="form-control" id="inputPassword2" name="numero" placeholder="Número">
            </div>
            <button type="submit" class="btn btn-primary mb-2">Enviar</button>
        </form>
    </body>
</html>
