/*
Davi Henrique dos Santos Silva Matrícula: 2016100588
Mateus Marques da Costa Matrícula: 2016101068
Lucas Levino de Souza Bezerra Matrícula: 2013000193
Karine de Almeida Monteiro Matrícula: 2016103044
Vinicius Pereira Torres Matrícula:2016102034
 */
package models;

public class Aluno {

    int id_aluno;
    public String name, senha, materia;
    public float av1, av2, av3, media;

    public Aluno(int id_aluno, String name, String senha,String materia) {
        this.id_aluno = id_aluno;
        this.name = name;
        this.senha = senha;
        this.materia = materia;
        this.av1 = 0;
        this.av2 = 0;
        this.av3 = 0;
        this.media=0;
    }

    public void setNotas(float av1, float av2, float av3) {

        this.av1 = av1;
        this.av2 = av2;
        this.av3 = av3;

         // this.media = (av1+av2+av3)/3;
        if (av1 >= av2 && av1 >= av3){
            if(av2 >=av3){
                media = (av1+av2)/2;
            }else{
                media = (av1+av3)/2;
            }
                
        }else{
            if(av2 >=av1 && av2>=av3){
                if(av1 >=av3){
                    media=(av2+av1)/2;
                }else{
                    media =(av2+av3)/2;
                }
            }else{
                if(av3>=av1 && av3>=av2){
                    if(av1>=av2){
                        media=(av3+av1)/2;
                    }else{
                        media=(av3+av2)/2;
                    }
                }
            }
        }
    }
}
