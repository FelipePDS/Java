<%-- 
    Document   : quantidadeASerPaga
    Created on : 30/06/2021, 19:21:41
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
        
        <title>Valor a ser pago</title>
    </head>
    
    <body>
        <h1>Resultado:</h1>
        <%
        
            if ((request.getParameter("valor") == null)||(request.getParameter("quantidade") == null)||(request.getParameter("pagamento") == null)){
                out.print("Algum dado errado!");
                out.print("<a href='index.jsp'>Voltar ao inicio</a>");
            } else{
                String pagamento = request.getParameter("pagamento");
                float valor = Float.parseFloat(request.getParameter("valor"));
                int quantidade = Integer.parseInt(request.getParameter("quantidade"));
                if (pagamento.equals("credito")){
                    out.print("<h2>O valor total será: R$ "+(valor*quantidade)+"</h2>");
                } else if (pagamento.equals("debito")){
                    out.print("<h2>O valor total será: R$ "+((valor*quantidade)*0.95)+"</h2>");
                } else {
                    out.print("<h2>O valor total será: R$ "+((valor*quantidade)*0.90)+"</h2>");
                }
            }
        
        %>
    </body>
</html>
