<%-- 
Davi Henrique dos Santos Silva Matrícula: 2016100588
Mateus Marques da Costa Matrícula: 2016101068
Lucas Levino de Souza Bezerra Matrícula: 2013000193
Karine de Almeida Monteiro Matrícula: 2016103044
Vinicius Pereira Torres Matrícula:2016102034
--%>

<%@page import="pacote.PegarAvsAluno"%>
<%@page import="pacote.MateriaAluno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/cssAlunoPage.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page Aluno</title>
    </head>
    <body>
        <div class="container" >
            <div class="divPrincipal">
                <!-- Content here -->
                 <%

            String aluno = request.getParameter("usuario");
            String materia ="";
            float av1=0,av2=0,av3=0,media=0;
            
            //PegarAvsAluno
             if(aluno.equals("Aluno1")){
                MateriaAluno m = new MateriaAluno();
                materia= m.aluno1Materia();
                
                PegarAvsAluno avs= new PegarAvsAluno();
                av1 = avs.aluno1AV1();
                av2 = avs.aluno1AV2();
                av3 = avs.aluno1AV3();
                media = avs.aluno1Media();
       
                
             }
             if(aluno.equals("Aluno2")){
                MateriaAluno m = new MateriaAluno();
                materia= m.aluno2Materia();
                
                 PegarAvsAluno avs= new PegarAvsAluno();
                av1 = avs.aluno2AV1();
                av2 = avs.aluno2AV2();
                av3 = avs.aluno2AV3();
                  media = avs.aluno2Media();
                
             }
              if(aluno.equals("Aluno3")){
                MateriaAluno m = new MateriaAluno();
                materia= m.aluno3Materia();
                
                
                 PegarAvsAluno avs= new PegarAvsAluno();
                av1 = avs.aluno3AV1();
                av2 = avs.aluno3AV2();
                av3 = avs.aluno3AV3();
                
                  media = avs.aluno3Media();
             }
               if(aluno.equals("Aluno4")){
                MateriaAluno m = new MateriaAluno();
                materia= m.aluno4Materia();
                
                 PegarAvsAluno avs= new PegarAvsAluno();
                av1 = avs.aluno4AV1();
                av2 = avs.aluno4AV2();
                av3 = avs.aluno4AV3();
                
                  media = avs.aluno4Media();
             }
        %>
                <h1 ><%=aluno%></h1>
                <h2 ><%=materia%></h2>
                <br>
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">AV1</th>
                            <th scope="col">AV2</th>
                            <th scope="col">AV3</th>
                            <th scope="col">Média</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><%=av1%></td>      
                            <td><%=av2%></td>
                            <td><%=av3%></td>
                            <td><%=media%></td>
                        </tr>

                    </tbody>
                </table>
                        <%
                        if(media >=7){
                            out.print("Aprovado");
                        }else{
                            out.print("Reprovado");
                        }
                        %>
                <br>
                <div class="left">
                    <a href="index.jsp"><button type="button" class="btn btn-dark">Voltar</button></a>
                </div>
            </div>
        </div>
    </body>
</html>
