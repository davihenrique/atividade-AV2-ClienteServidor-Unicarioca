/*
Davi Henrique dos Santos Silva Matrícula: 2016100588
Mateus Marques da Costa Matrícula: 2016101068
Lucas Levino de Souza Bezerra Matrícula: 2013000193
Karine de Almeida Monteiro Matrícula: 2016103044
Vinicius Pereira Torres Matrícula:2016102034
 */
package br.edu.unicarioca.desappweb;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.ejb.Stateless;
import models.Aluno;
import models.Professor;

@WebService(serviceName = "NovoWebService")
@Stateless()
public class NovoWebService {

    // id, nome, senha, materia
    Aluno a1 = new Aluno(1,"Aluno1","Aluno1","Matematica Discreta");
    Aluno a2 = new Aluno(2,"Aluno2","Aluno2","Matematica Discreta");
    Aluno a3 = new Aluno(3,"Aluno3","Aluno3","Compiladores");
    Aluno a4 = new Aluno(4,"Aluno4","Aluno4","Compiladores");
    // ID, Nome, Senha, materia
    Professor p1 = new Professor(1,"Professor1","Professor1","Matematica Dicreta");
     Professor p2 = new Professor(2,"Professor2","Professor2","Compiladores");
    
    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }

    /**
     * Operação de Web service
     */
    @WebMethod(operationName = "atribuirNota12")
    public String atribuirNota12(@WebParam(name = "av11") float av11, @WebParam(name = "av21") float av21, @WebParam(name = "av31") float av31, @WebParam(name = "av12") float av12, @WebParam(name = "av22") float av22, @WebParam(name = "av32") float av32) {
        //TODO write your implementation code here:
        
        a1.setNotas(av11, av21, av31);
        a2.setNotas(av12,av22,av32);
        return a1.media+"  --  "+a2.media;
    }

    /**
     * Operação de Web service
     */
    @WebMethod(operationName = "atribuirNota34")
    public String atribuirNota34(@WebParam(name = "av13") float av13, @WebParam(name = "av23") float av23, @WebParam(name = "av33") float av33, @WebParam(name = "av14") float av14, @WebParam(name = "av24") float av24, @WebParam(name = "av34") float av34) {
        //TODO write your implementation code here:
         a3.setNotas(av13, av23, av33);
         a4.setNotas(av14,av24,av34);
        return a3.media+"  --  "+a4.media;
    }

    /**
     * Operação de Web service
     */
    @WebMethod()
    public float Aluno1AV1() {
        //TODO write your implementation code here:
        return a1.av1;
    }
     @WebMethod()
    public float Aluno1AV2() {
        //TODO write your implementation code here:
        return a1.av2;
    }
    
     @WebMethod()
    public float Aluno1AV3() {
        //TODO write your implementation code here:
        return a1.av3;
    }
    
     @WebMethod()
    public float Aluno2AV1() {
        //TODO write your implementation code here:
        return a2.av1;
    }
    
     @WebMethod()
    public float Aluno2AV2() {
        //TODO write your implementation code here:
        return a2.av2;
    }
    
     @WebMethod()
    public float Aluno2AV3() {
        //TODO write your implementation code here:
        return a2.av3;
    }
    
     @WebMethod()
    public float Aluno3AV1() {
        //TODO write your implementation code here:
        return a3.av1;
    }
      @WebMethod()
    public float Aluno3AV2() {
        //TODO write your implementation code here:
        return a3.av2;
    }
  @WebMethod()
    public float Aluno3AV3() {
        //TODO write your implementation code here:
        return a3.av3;
    }
      @WebMethod()
    public float Aluno4AV1() {
        //TODO write your implementation code here:
        return a4.av1;
    }
       @WebMethod()
    public float Aluno4AV2() {
        //TODO write your implementation code here:
        return a4.av2;
    }
       @WebMethod()
    public float Aluno4AV3() {
        //TODO write your implementation code here:
        return a4.av3;
    }
    
       @WebMethod()
    public float Aluno1Media() {
        //TODO write your implementation code here:
        return a1.media;
    }
    
       @WebMethod()
    public float Aluno2Media() {
        //TODO write your implementation code here:
        return a2.media;
    }
       @WebMethod()
    public float Aluno3Media() {
        //TODO write your implementation code here:
        return a3.media;
    }
       @WebMethod()
    public float Aluno4Media() {
        //TODO write your implementation code here:
        return a4.media;
    }

       @WebMethod()
    public String Aluno1Materia() {
        //TODO write your implementation code here:
        return a1.materia;
    }
    
       @WebMethod()
    public String Aluno2Materia() {
        //TODO write your implementation code here:
        return a2.materia;
    }
    
       @WebMethod()
    public String Aluno3Materia() {
        //TODO write your implementation code here:
        return a3.materia;
    }
    
       @WebMethod()
    public String Aluno4Materia() {
        //TODO write your implementation code here:
        return a4.materia;
    }
    
    /**
     * Operação de Web service
     */
    @WebMethod(operationName = "senhaProfessor1")
    public String senhaProfessor1(@WebParam(name = "senha") String senha) {
        //TODO write your implementation code here:
        if((p1.senha).equals(senha)){
            return "true";
        }
        return "false";
    }
    
     @WebMethod(operationName = "senhaProfessor2")
    public String senhaProfessor2(@WebParam(name = "senha") String senha) {
        //TODO write your implementation code here:
        if((p2.senha).equals(senha)){
            return "true";
        }
        return "false";
    }

    /**
     * Operação de Web service
     */
    @WebMethod(operationName = "senhaAluno1")
    public String senhaAluno1(@WebParam(name = "senha") String senha) {
        //TODO write your implementation code here:
       if((a1.senha).equals(senha)){
            return "true";
        }
        return "false";
    }
    
 
    @WebMethod(operationName = "senhaAluno2")
    public String senhaAluno2(@WebParam(name = "senha") String senha) {
        //TODO write your implementation code here:
       if((a2.senha).equals(senha)){
            return "true";
        }
        return "false";
    }
    
       @WebMethod(operationName = "senhaAluno3")
    public String senhaAluno3(@WebParam(name = "senha") String senha) {
        //TODO write your implementation code here:
       if((a3.senha).equals(senha)){
            return "true";
        }
        return "false";
    }
    
    @WebMethod(operationName = "senhaAluno4")
    public String senhaAluno4(@WebParam(name = "senha") String senha) {
        //TODO write your implementation code here:
       if((a4.senha).equals(senha)){
            return "true";
        }
        return "false";
    }
    
}
