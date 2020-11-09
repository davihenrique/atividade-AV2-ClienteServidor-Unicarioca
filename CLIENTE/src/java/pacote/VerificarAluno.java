/*
Davi Henrique dos Santos Silva Matrícula: 2016100588
Mateus Marques da Costa Matrícula: 2016101068
Lucas Levino de Souza Bezerra Matrícula: 2013000193
Karine de Almeida Monteiro Matrícula: 2016103044
Vinicius Pereira Torres Matrícula:2016102034
 */
package pacote;

public class VerificarAluno {

    public static String senhaAluno1(java.lang.String senha) {
        br.edu.unicarioca.desappweb.NovoWebService_Service service = new br.edu.unicarioca.desappweb.NovoWebService_Service();
        br.edu.unicarioca.desappweb.NovoWebService port = service.getNovoWebServicePort();
        return port.senhaAluno1(senha);
    }

    public static String senhaAluno2(java.lang.String senha) {
        br.edu.unicarioca.desappweb.NovoWebService_Service service = new br.edu.unicarioca.desappweb.NovoWebService_Service();
        br.edu.unicarioca.desappweb.NovoWebService port = service.getNovoWebServicePort();
        return port.senhaAluno2(senha);
    }

    public static String senhaAluno3(java.lang.String senha) {
        br.edu.unicarioca.desappweb.NovoWebService_Service service = new br.edu.unicarioca.desappweb.NovoWebService_Service();
        br.edu.unicarioca.desappweb.NovoWebService port = service.getNovoWebServicePort();
        return port.senhaAluno3(senha);
    }

    public static String senhaAluno4(java.lang.String senha) {
        br.edu.unicarioca.desappweb.NovoWebService_Service service = new br.edu.unicarioca.desappweb.NovoWebService_Service();
        br.edu.unicarioca.desappweb.NovoWebService port = service.getNovoWebServicePort();
        return port.senhaAluno4(senha);
    }
    
}
