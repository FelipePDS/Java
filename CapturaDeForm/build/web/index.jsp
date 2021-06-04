<%-- 
    Document   : index
    Created on : 03/06/2021, 08:20:52
    Author     : Alexandre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Captura de Form com Java</title>
        
        <style>
            html, body {
                width: 100%;
                height: 100%;
                
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
            }
        </style>
    </head>
    <body>
        <h1>Captura de Form com Java</h1>
        <form action="index.jsp" method="GET">
            Nome: <input type="text" name="nome" />
            <input type="submit" value="enviar" /><br><br>
        </form>
        
        <%
            String nome = request.getParameter("nome");
            out.print(nome != null ? "Bem vindo " + nome : "Preencha o formulário para obter o resultado");
        %>
    </body>
</html>
