/*
Davi Henrique dos Santos Silva Matrícula: 2016100588
Mateus Marques da Costa Matrícula: 2016101068
Lucas Levino de Souza Bezerra Matrícula: 2013000193
Karine de Almeida Monteiro Matrícula: 2016103044
Vinicius Pereira Torres Matrícula:2016102034
 */
package pacote;

public class AtribuirNota {

    public static String atribuirNota12(float av11, float av21, float av31, float av12, float av22, float av32) {
        br.edu.unicarioca.desappweb.NovoWebService_Service service = new br.edu.unicarioca.desappweb.NovoWebService_Service();
        br.edu.unicarioca.desappweb.NovoWebService port = service.getNovoWebServicePort();
        return port.atribuirNota12(av11, av21, av31, av12, av22, av32);
    }

    public static String atribuirNota34(float av13, float av23, float av33, float av14, float av24, float av34) {
        br.edu.unicarioca.desappweb.NovoWebService_Service service = new br.edu.unicarioca.desappweb.NovoWebService_Service();
        br.edu.unicarioca.desappweb.NovoWebService port = service.getNovoWebServicePort();
        return port.atribuirNota34(av13, av23, av33, av14, av24, av34);
    }
    
}
