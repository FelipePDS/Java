<%-- 
    Document   : index.jsp
    Created on : 30/06/2021, 18:36:24
    Author     : Alexandre

    PESO
    ALTURA
    SEXO
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
        
        <title>Cálculo de IMC</title>
    </head>
    
    <body>
        <h3>Digite as seguintes informações para calcular o IMC da pessoa:</h3>
        
        <form action="imc.jsp" method="POST">
            <div class="form-group row">
              <label for="peso" class="col-sm-2 col-form-label">Peso</label>
              <div class="col-sm-10">
                <input type="number" class="form-control" id="peso" name="peso" placeholder="Digite o peso..." required>
              </div>
            </div>
            <div class="form-group row">
              <label for="altura" class="col-sm-2 col-form-label">Altura</label>
              <div class="col-sm-10">
                <input type="number" class="form-control" id="altura" name="altura" placeholder="Digite a altura..." required>
              </div>
            </div>
            <fieldset class="form-group">
                <div class="row">
                  <legend class="col-form-label col-sm-2 pt-0">Sexo</legend>
                  <div class="col-sm-10">
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="fenotipo" id="masculino" value="masculino" checked>
                      <label class="form-check-label" for="masculino">
                        Masculino
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="fenotipo" id="feminino" value="feminino">
                      <label class="form-check-label" for="feminino">
                        Feminino
                      </label>
                    </div>
                  </div>
                </div>
            </fieldset>
            <div class="form-group row">
              <div class="col-sm-10">
                <button type="submit" class="btn btn-primary">Enviar</button>
              </div>
            </div>
        </form>
    </body>
</html>
