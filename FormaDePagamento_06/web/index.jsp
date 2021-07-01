<%-- 
    Document   : index.jsp
    Created on : 30/06/2021, 19:14:50
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
        
        <title>Forma de pagamento</title>
    </head>
    
    <body>
        <h3>Digite as seguintes informações para calcular a quantidade a ser paga</h3>
        
        <form action="quantidadeASerPaga.jsp" method="POST">
            <div class="form-group row">
              <label for="valor" class="col-sm-2 col-form-label">Valor</label>
              <div class="col-sm-10">
                <input type="number" class="form-control" id="valor" name="valor" placeholder="Digite o valor a ser pagado..." required>
              </div>
            </div>
            <div class="form-group row">
              <label for="quantidade" class="col-sm-2 col-form-label">Quantidade</label>
              <div class="col-sm-10">
                <input type="number" class="form-control" id="quantidade" name="quantidade" placeholder="Digite a quantidade..." required>
              </div>
            </div>
            <fieldset class="form-group">
                <div class="row">
                  <legend class="col-form-label col-sm-2 pt-0">Forma de pagamento</legend>
                  <div class="col-sm-10">
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="pagamento" id="credito" value="credito" checked>
                      <label class="form-check-label" for="credito">
                        Credito
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="pagamento" id="debito" value="debito">
                      <label class="form-check-label" for="debito">
                        Debito
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="pagamento" id="boleto" value="boleto">
                      <label class="form-check-label" for="boleto">
                        Boleto
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
