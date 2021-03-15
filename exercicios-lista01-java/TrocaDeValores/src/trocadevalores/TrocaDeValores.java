package trocadevalores;

import java.util.Scanner;

public class TrocaDeValores {
    public static void main(String[] args) {
        String valor1;
        String valor2;
        String valorTemporario;
        
        valor1 = "mestre do universo";
        
        Scanner lerTeclado = new Scanner(System.in);
        System.out.println("Digite um nome");
        valor2 = lerTeclado.nextLine();
        
        valorTemporario = valor1;
        valor1 = valor2;
        valor2 = valorTemporario;
        
        System.out.printf(valor1 + " " + valor2);
    }
}
