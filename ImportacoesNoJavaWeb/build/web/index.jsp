<%-- 
    Document   : index
    Created on : 15/06/2021, 10:47:39
    Author     : Alexandre
--%>

<%@page import="recurso.Dados"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data no Java</title>
    </head>
    <body>
        <h1>Data atual: 
            <%= Dados.dataAtual() %>
        </h1>
        
        <h1>Hora atual: 
            <%= Dados.horaAtual() %>
        </h1>
    </body>
</html>
