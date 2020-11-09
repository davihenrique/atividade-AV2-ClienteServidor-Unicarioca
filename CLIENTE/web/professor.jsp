<%-- 
Davi Henrique dos Santos Silva Matrícula: 2016100588
Mateus Marques da Costa Matrícula: 2016101068
Lucas Levino de Souza Bezerra Matrícula: 2013000193
Karine de Almeida Monteiro Matrícula: 2016103044
Vinicius Pereira Torres Matrícula:2016102034
--%>

<%@page import="pacote.PegarAvsAluno"%>
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
        <title>JSP Page Professor</title>
    </head>
    <body>
        <%
            String nomealunoa ="",nomealunob="";
            float av1a = 0, av2a=0,av3a=0, av1b=0,av2b=0, av3b=0;
         String professor = request.getParameter("usuario");
            
            if(professor.equals("Professor1")){
                nomealunoa = "Aluno1";
                nomealunob= "Aluno2";
                
                PegarAvsAluno a1 = new PegarAvsAluno();
                av1a = a1.aluno1AV1();
                av2a = a1.aluno1AV2();
                av3a = a1.aluno1AV3();
                
                PegarAvsAluno a2 = new PegarAvsAluno();
                av1b = a1.aluno2AV1();
                av2b = a1.aluno2AV2();
                av3b = a1.aluno2AV3();
                
            }else{
                 nomealunoa = "Aluno3";
                nomealunob= "Aluno4";
                
                 PegarAvsAluno a3 = new PegarAvsAluno();
                av1a = a3.aluno3AV1();
                av2a = a3.aluno3AV2();
                av3a = a3.aluno3AV3();
                
                PegarAvsAluno a4 = new PegarAvsAluno();
                av1b = a4.aluno4AV1();
                av2b = a4.aluno4AV2();
                av3b = a4.aluno4AV3();
                
            }

        %>
        
        <div class="container" >
            <div class="divPrincipal">
                <!-- Content here -->
                <h1 ><%=professor%></h1>
                <br>
                <form action="verificar.jsp" method="post">
                    <div class="form-group">

                        <h2 ><%=nomealunoa%></h2>

                        <div class="container">
                            <div class="row" >
                                <div class="col-sm">
                                    <input class="form-control form-control-lg" type="text" placeholder="AV1" value="<%=av1a%>" name="av1a">
                                </div>
                                <div class="col-sm">
                                    <input class="form-control form-control-lg" type="text" placeholder="AV2" value="<%=av2a%>" name="av2a">
                                </div>
                                <div class="col-sm">
                                    <input class="form-control form-control-lg" type="text" placeholder="AV3" value="<%=av3a%>" name="av3a">
                                </div>
                            </div>
                        </div>

                        <br>
                        <h2 ><%=nomealunob%></h2>

                        <div class="container">
                            <div class="row" >
                                <div class="col-sm">
                                    <input class="form-control form-control-lg" type="text" placeholder="AV1" value="<%=av1b%>" name="av1b">
                                </div>
                                <div class="col-sm">
                                    <input class="form-control form-control-lg" type="text" placeholder="AV2" value="<%=av2b%>" name="av2b">
                                </div>
                                <div class="col-sm">
                                    <input class="form-control form-control-lg" type="text" placeholder="AV3" value="<%=av3b%>" name="av3b">
                                </div>
                            </div>
                        </div>

                    </div>
                                <div style="display:none; ">
                                    <input type="text" value="<%=professor%>" name="professor"></div>
                    <div class="left">
                        <a href="index.jsp"><button type="button" class="btn btn-dark">Voltar</button></a>
                        <button class="btn btn-dark" type="submit">Salvar</button> </div>
                </form>

            </div>
    </body>
</html>
