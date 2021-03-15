package parouimpar;

import java.util.Scanner;

public class VerificaParOuImpar {
    private int num;
    
    public void pegaValor() {
        Scanner lerTeclado = new Scanner(System.in);
        System.out.printf("Digite um número inteiro para verificar se ele é par ou ímpar: ");
        this.num = lerTeclado.nextInt();
    }
    
    public String verificar() {
        this.pegaValor();
        
        if (this.num % 2 == 0) {
            return "O número " + this.num + " é par!";
        } else {
            return "O número " + this.num + " é ímpar!";
        }
    }
}
