package mediaaluno;

import java.util.ArrayList;
import java.util.Scanner;

public class CalculaMedia {
    private String aluno;
    private ArrayList<Float> nota = new ArrayList<Float>();
    private float media;
    private boolean aprovado;
    
    Scanner lerDados = new Scanner(System.in);
    
    public void pegaDados() {
        System.out.printf("Digite o nome do aluno: ");
        this.aluno = lerDados.nextLine();
        
        for (int i=1; i <= 4; i++) {
            System.out.printf("Digite a nota" + i + " do aluno " + aluno + ": ");
            float notaDigitada = lerDados.nextFloat();
            if (notaDigitada >= 0 && notaDigitada <= 10) {
                this.nota.add(notaDigitada);
            } else {
                i--;
                System.out.println("Digite uma nota maior que 0 e menor que 10");
            }
        }
    }
    
    public void calcularMedia() {
        pegaDados();
        
        this.media = (this.nota.get(0) + this.nota.get(1) + this.nota.get(2) + this.nota.get(3)) / 4;
        this.aprovado = verificaAprovacao(this.media, this.aprovado);
        
        System.out.println("---------------------------");
        System.out.println("Aluno: " + this.aluno);
        System.out.println("Média da nota: " + this.media);
        if (this.aprovado) {
            System.out.println("Status: Aprovado");
        } else {
            System.out.println("Status: Reprovado");
        }
    }
    
    public boolean verificaAprovacao(float media, boolean aprovado) {
        if (media >= 6) {
            aprovado = true;
        } else {
            aprovado = false;
        }
        
        return aprovado;
    }
}
