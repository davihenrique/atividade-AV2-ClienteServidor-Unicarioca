<%-- 
Davi Henrique dos Santos Silva Matrícula: 2016100588
Mateus Marques da Costa Matrícula: 2016101068
Lucas Levino de Souza Bezerra Matrícula: 2013000193
Karine de Almeida Monteiro Matrícula: 2016103044
Vinicius Pereira Torres Matrícula:2016102034
--%>

<%@page import="pacote.AtribuirNota"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link href="css/cssAlunoPage.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    </head>
    <body>
        <%

            String professor = request.getParameter("professor");

            String av1a = request.getParameter("av1a");
            String av2a = request.getParameter("av2a");
            String av3a = request.getParameter("av3a");

            String av1b = request.getParameter("av1b");
            String av2b = request.getParameter("av2b");
            String av3b = request.getParameter("av3b");

            if (professor.equals("Professor1")) {

                //atribuirNota12
                AtribuirNota at = new AtribuirNota();

                at.atribuirNota12(Float.parseFloat(av1a), Float.parseFloat(av2a), Float.parseFloat(av3a), Float.parseFloat(av1b), Float.parseFloat(av2b), Float.parseFloat(av3b));

            } else if (professor.equals("Professor2")) {

                AtribuirNota at = new AtribuirNota();

                at.atribuirNota34(Float.parseFloat(av1a), Float.parseFloat(av2a), Float.parseFloat(av3a), Float.parseFloat(av1b), Float.parseFloat(av2b), Float.parseFloat(av3b));

            } else {
                //GO HOME
            }

        %>

        <div style="padding-top: 10%;">

        <div class="d-flex justify-content-center">

            <h1>Notas Salvas <span class="glyphicon glyphicon-ok" aria-hidden="true"></span></h1>
        </div>
            <br>
            <div class="d-flex justify-content-center">
                <br> <a href="index.jsp"><button type="button" class="btn btn-dark">Inicio</button></a>
            </div>
        </div>
    </body>
</html>
