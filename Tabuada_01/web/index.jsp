<%-- 
    Document   : index
    Created on : 17/06/2021, 09:35:31
    Author     : Alexandre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabúada</title>
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        
        <style>
            body {
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
                
                padding: 0 8%;
            }
            
            h1 {
                margin-top: 2rem;
            }
            
            table {
                border-radius: .8rem;
                
                overflow-x: scroll;
            }
        </style>
    </head>
    
    <body class="text-light bg-dark">
        <h1>Tabúada</h1>
        
        <table class="table table-striped table-dark">
            <%
                for (int numeroMultiplicante=1; numeroMultiplicante <= 10; numeroMultiplicante++) {
            %>
                    <tr>
                        <th><%= numeroMultiplicante %></th>
                        
                        <%
                            for (int numeroMultiplicado=1; numeroMultiplicado <= 10; numeroMultiplicado++) {
                        %>
                        
                                <td>
                                    <%= numeroMultiplicante %> x <%= numeroMultiplicado %> = <%= numeroMultiplicante * numeroMultiplicado%>
                                </td>
                        
                        <% } %>
                    </tr>
            <% } %>
        </table>
    </body>
</html>
