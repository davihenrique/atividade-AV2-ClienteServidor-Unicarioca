<%-- 
Davi Henrique dos Santos Silva Matrícula: 2016100588
Mateus Marques da Costa Matrícula: 2016101068
Lucas Levino de Souza Bezerra Matrícula: 2013000193
Karine de Almeida Monteiro Matrícula: 2016103044
Vinicius Pereira Torres Matrícula:2016102034
--%>

<%@page import="pacote.VerificarAluno"%>
<%@page import="pacote.VerificarProfessor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body onload="document.form1.submit()" style="display: none;">
        <%
            String nome = request.getParameter("nome");
            String senha = request.getParameter("senha");

            if (nome.equals("Professor1") || nome.equals("Professor2")) {

                if (nome.equals("Professor1")) {
                    //se for professor 1

                    VerificarProfessor p = new VerificarProfessor();

                    if ((p.senhaProfessor1(senha)).equals("true")) {
                        out.print("Professor 1 Logou");
                        
                          out.print("<form id='yourform' method='post' action='professor.jsp'> "
                                + "Login: <input type='text' name='usuario' value='Professor1'>"
                                + "<input type='submit' value='Enviar'></form>");
                        
                    } else {
                        String redirectURL = "index.jsp";
                        response.sendRedirect(redirectURL);
                    }

                } else {
                    VerificarProfessor p = new VerificarProfessor();
                    if ((p.senhaProfessor2(senha)).equals("true")) {
                        out.print("Professor 2 Logou");
                        out.print("<form id='yourform' method='post' action='professor.jsp'> "
                                + "Login: <input type='text' name='usuario' value='Professor2'>"
                                + "<input type='submit' value='Enviar'></form>");
                        
                    } else {
                        String redirectURL = "index.jsp";
                        response.sendRedirect(redirectURL);
                    }
                }
                 out.print("<script>document.addEventListener('DOMContentLoaded', function(event) { document.createElement('form').submit.call(document.getElementById('yourform'));});         </script>");

            } else if (nome.equals("Aluno1") || nome.equals("Aluno2") || nome.equals("Aluno3") || nome.equals("Aluno4")) {

                if (nome.equals("Aluno1")) {
                    //se for aluno 1

                    VerificarAluno a = new VerificarAluno();

                    if ((a.senhaAluno1(senha)).equals("true")) {
                        out.print("Aluno 1 Logou");

                        out.print("<form id='yourform' method='post' action='aluno.jsp'> "
                                + "Login: <input type='text' name='usuario' value='Aluno1'>"
                                + "<input type='submit' value='Enviar'></form>");

                    } else {
                        String redirectURL = "index.jsp";
                        response.sendRedirect(redirectURL);
                    }

                } else if (nome.equals("Aluno2")) {
                    // se for aluno 2

                    VerificarAluno a = new VerificarAluno();

                    if ((a.senhaAluno2(senha)).equals("true")) {
                        out.print("Aluno 2 Logou");
                        out.print("<form id='yourform' method='post' action='aluno.jsp'> "
                                + "Login: <input type='text' name='usuario' value='Aluno2'>"
                                + "<input type='submit' value='Enviar'></form>");

                    } else {
                        String redirectURL = "index.jsp";
                        response.sendRedirect(redirectURL);
                    }

                } else if (nome.equals("Aluno3")) {
                    //se for aluno3
                    VerificarAluno a = new VerificarAluno();

                    if ((a.senhaAluno3(senha)).equals("true")) {
                        out.print("Aluno 3 Logou");
                        out.print("<form id='yourform' method='post' action='aluno.jsp'> "
                                + "Login: <input type='text' name='usuario' value='Aluno3'>"
                                + "<input type='submit' value='Enviar'></form>");

                    } else {
                        String redirectURL = "index.jsp";
                        response.sendRedirect(redirectURL);
                    }

                } else {
                    // se for aluno 4
                    VerificarAluno a = new VerificarAluno();

                    if ((a.senhaAluno4(senha)).equals("true")) {
                        out.print("Aluno 4 Logou");

                        out.print("<form id='yourform' method='post' action='aluno.jsp'> "
                                + "Login: <input type='text' name='usuario' value='Aluno4'>"
                                + "<input type='submit' value='Enviar'></form>");

                    } else {
                        String redirectURL = "index.jsp";
                        response.sendRedirect(redirectURL);
                    }

                }

                out.print("<script>document.addEventListener('DOMContentLoaded', function(event) { document.createElement('form').submit.call(document.getElementById('yourform'));});         </script>");

            } else {
                String redirectURL = "index.jsp";
                response.sendRedirect(redirectURL);
            }
        %>
        <h1>Hello World!</h1>
    </body>
</html>
