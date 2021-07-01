<%-- 
    Document   : index
    Created on : 17/06/2021, 13:05:56
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
                min-width: 30rem;
            }
        </style>
        
        <title>Formatador de caracteres</title>
    </head>
    
    <body>
        <h3>Digite um caractere para obter a sua formatação de acordo com o que escolher (pode escolher mais de uma opção)</h3>
        
        <form action="resultadoDaFormatacao.jsp" method="POST">
            <div class="form-group row">
              <label for="inputEmail3" class="col-sm-2 col-form-label">Caractere</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" id="inputEmail3" name="caractere" placeholder="Digite sua mensagem aqui..." required>
              </div>
            </div>
            <fieldset class="form-group">
              <div class="row">
                <legend class="col-form-label col-sm-2 pt-0">Escolha</legend>
                <div class="col-sm-10">
                  <div class="form-check">
                      <input class="form-check-input" type="checkbox" name="formatador" id="gridRadios1" value="letrasMaiusculas" checked>
                    <label class="form-check-label" for="gridRadios1">
                      Deixar em letras maiúsculas
                    </label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" name="formatador" id="gridRadios2" value="letrasMinusculas">
                    <label class="form-check-label" for="gridRadios2">
                      Deixar em letras minúsculas
                    </label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" name="formatador" id="gridRadios3" value="caractereInvertido">
                    <label class="form-check-label" for="gridRadios3">
                      Inverter caracteres
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
