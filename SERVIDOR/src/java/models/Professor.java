/*
Davi Henrique dos Santos Silva Matrícula: 2016100588
Mateus Marques da Costa Matrícula: 2016101068
Lucas Levino de Souza Bezerra Matrícula: 2013000193
Karine de Almeida Monteiro Matrícula: 2016103044
Vinicius Pereira Torres Matrícula:2016102034
 */
package models;

public class Professor {
    int id_professor;
    public String nome, senha, materia;

    public Professor(int id_professor, String nome,String senha, String materia) {
        this.id_professor = id_professor;
        this.nome = nome;
        this.senha = senha;
        this.materia = materia;
    }
}
