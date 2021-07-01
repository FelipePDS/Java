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

            h1 {
                margin-bottom: 2rem;
                text-align: center;
            }
            
            h2, h3 {
                text-align: center;
            }
        </style>
        
        <title>Resultado do IMC</title>
    </head>
    <body>
        <div style="padding-top:2%; padding-bottom: 4%;">
            <h1>Resultado:</h1>
        <%
        
            if ((request.getParameter("fenotipo") == null)||(request.getParameter("peso") == null)||(request.getParameter("altura") == null)){
                out.print("Algum dado errado!");
                out.print("<a href='index.jsp'>Voltar ao inicio</a>");
            } else{
                String fenotipo = request.getParameter("fenotipo");
                float peso = Float.parseFloat(request.getParameter("peso"));
                float altura = Float.parseFloat(request.getParameter("altura"));
                float imc = (peso/(altura*altura));

                out.print("<h2>De acordo com o seu fenótipo " + fenotipo + ", seu IMC é "+imc+"</h2>");

                if (fenotipo.equals("masculino")){
                    if (imc < 20.7){
                        out.print("<h2>Você está abaixo do peso</h2>");
                    } else if((imc>=20.7)&&(imc<26.4)){
                        out.print("<h2>Você está com o peso comum</h2>");
                    } else if((imc>=26.5)&&(imc<27.8)){
                        out.print("<h2>Você está levemente acima do peso</h2>");
                    } else if((imc>=27.9)&&(imc<=31.1)){
                        out.print("<h2>Você está acima do peso</h2>");
                    } else if(imc>31.1){
                        out.print("<h2>Você com o peso comum</h2>");
                    }
                } else {
                    if (imc < 19.1){
                        out.print("<h2>Você está abaixo do peso</h2>");
                    } else if((imc >= 19.1) && (imc < 25.8)){
                        out.print("<h2>Você está com o peso comum</h2>");
                    } else if((imc>=25.8)&&(imc<27.3)){
                        out.print("<h2>Você está levemente acima do peso</h2>");
                    } else if((imc>=27.4)&&(imc<=32.3)){
                        out.print("<h2>Você está acima do peso</h2>");
                    } else if(imc>32.3){
                        out.print("<h2>Você com o peso comum</h2>");
                    }
                }
            }
        
        %>
        </div>
    </body>
</html>
