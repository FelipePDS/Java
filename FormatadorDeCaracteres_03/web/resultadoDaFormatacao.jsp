<%-- 
    Document   : tabuada
    Created on : 17/06/2021, 12:31:37
    Author     : Alexandre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    try {
        String caractere = request.getParameter("caractere");
        String[] formatadores = request.getParameterValues("formatador");
        
        if (caractere.equals("")) {
%>
                <p>Digite um caractere válido</p>
                <a href="index.jsp">Voltar</a>
<%
        } else {
%>

    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Formatação do caractere: <%= caractere %></title>

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
                <div class="card-header">Formatador de caractere</div>
                <div class="card-body">
                  <h5 class="card-title">Caractere: <%= caractere %></h5>
                  <ul>
                    <% for (String formatador : formatadores) { %>
                      <% if (formatador.equals("letrasMaiusculas")) { %>
                          <li>Caractere em letras maiúsculas: <b><%= caractere.toUpperCase() %></b></li>
                      <% } %>

                      <% if (formatador.equals("letrasMinusculas")) { %>
                          <li>Caractere em letras minúsculas <b><%= caractere.toLowerCase() %></b></li>
                      <% } %>

                      <% if (formatador.equals("caractereInvertido")) { %>
                          <%
                              String caractereInvertido = "";
                              for (int i = caractere.length() - 1; 0 <= i; i--) {
                                caractereInvertido += caractere.charAt(i);
                              } 
                          %>
                      
                          <li>Caractere invertido: <b><%= caractereInvertido %></b></li>
                      <% } %>
                    <% } %>
                  </ul>
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
        <p>Possíveis erros: <br> Um caractere não digitado. <br> Um formatador não escolhido.</p>
        <a href="index.jsp">Voltar</a>
<%
    }
%>
