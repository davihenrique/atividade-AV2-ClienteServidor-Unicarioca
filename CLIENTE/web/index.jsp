<%-- 
Davi Henrique dos Santos Silva Matrícula: 2016100588
Mateus Marques da Costa Matrícula: 2016101068
Lucas Levino de Souza Bezerra Matrícula: 2013000193
Karine de Almeida Monteiro Matrícula: 2016103044
Vinicius Pereira Torres Matrícula:2016102034
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <link href="css/cssLoginPage.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <div class="sidenav" >
            <div class="login-main-text" style="margin-top: 0%;">
            <h2>Application<br> Login Page</h2>
            <p>Login from here to access.</p>
            <div>
               User: Professor1 <br>Password: Professor1 <br><br>
               User: Professor2 <br>Password: Professor2 <br><br>
               User: Aluno1 <br>Password: Aluno1 <br><br>
               User: Aluno2 <br>Password: Aluno2 <br><br>
               User: Aluno2 <br>Password: Aluno2 <br><br>
               User: Aluno2 <br>Password: Aluno2 <br><br>
            </div>
         </div>
      </div>
      <div class="main">
         <div class="col-md-6 col-sm-12">
            <div class="login-form">
                <form action="login.jsp" method="post">
                  <div class="form-group">
                     <label>User Name</label>
                     <input type="text" class="form-control" placeholder="User Name" name="nome">
                  </div>
                  <div class="form-group">
                     <label>Password</label>
                     <input type="password" class="form-control" placeholder="Password" name="senha">
                  </div>
                  <button type="submit" class="btn btn-black">Login</button>
                  
               </form>
                
            </div>
         </div>
      </div>
    </body>
</html>
