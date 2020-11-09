/*
Davi Henrique dos Santos Silva Matrícula: 2016100588
Mateus Marques da Costa Matrícula: 2016101068
Lucas Levino de Souza Bezerra Matrícula: 2013000193
Karine de Almeida Monteiro Matrícula: 2016103044
Vinicius Pereira Torres Matrícula:2016102034
 */
package pacote;

public class MateriaAluno {

    public static String aluno1Materia() {
        br.edu.unicarioca.desappweb.NovoWebService_Service service = new br.edu.unicarioca.desappweb.NovoWebService_Service();
        br.edu.unicarioca.desappweb.NovoWebService port = service.getNovoWebServicePort();
        return port.aluno1Materia();
    }

    public static String aluno2Materia() {
        br.edu.unicarioca.desappweb.NovoWebService_Service service = new br.edu.unicarioca.desappweb.NovoWebService_Service();
        br.edu.unicarioca.desappweb.NovoWebService port = service.getNovoWebServicePort();
        return port.aluno2Materia();
    }

    public static String aluno3Materia() {
        br.edu.unicarioca.desappweb.NovoWebService_Service service = new br.edu.unicarioca.desappweb.NovoWebService_Service();
        br.edu.unicarioca.desappweb.NovoWebService port = service.getNovoWebServicePort();
        return port.aluno3Materia();
    }

    public static String aluno4Materia() {
        br.edu.unicarioca.desappweb.NovoWebService_Service service = new br.edu.unicarioca.desappweb.NovoWebService_Service();
        br.edu.unicarioca.desappweb.NovoWebService port = service.getNovoWebServicePort();
        return port.aluno4Materia();
    }
    
}
