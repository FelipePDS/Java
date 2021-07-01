<%-- 
    Document   : tabuada
    Created on : 17/06/2021, 12:31:37
    Author     : Alexandre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    try {
        int numero = Integer.parseInt(request.getParameter("numero"));
%>

    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Tabúada do <%= numero %></title>

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
                
                .card {
                    min-width: 22rem;
                    
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    flex-direction: column;
                }
                
                .card ul {
                    list-style: none;
                    
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    flex-direction: column;
                    
                    padding: 0 !important;
                    margin-bottom: 0 !important;
                }
            </style>
        </head>

        <body>
            <div class="card text-white bg-dark mb-3" style="max-width: 18rem;">
                <div class="card-header">Calculador de Tabúada</div>
                <div class="card-body">
                  <h5 class="card-title">Tabúada do <%= numero %></h5>
                  <ul>
                      <% for (int numeroMultiplicante=1; numeroMultiplicante <= 10; numeroMultiplicante++) { %>
                        <li>
                            <%= numero %> x <%= numeroMultiplicante %> = <%= numeroMultiplicante * numero %>
                        </li>
                      <% } %>
                  </ul>
                </div>
            </div>
        </body>
    </html>

<%
    } catch (Exception ex) {
        System.out.println("Valor digitado inválido!");
%>
        <h3>Valor digitado inválido!!!</h3>
        <a href="index.jsp">Voltar</a>
<%
    }
%>
