package aula04pt2;

import java.util.Scanner;

public class Aula04Pt2 {
    public static void main(String[] args) {
        // LER UM NOME VIA CONSOLE E IMPRIMIR
        String nome = "";
        
        // Instanciar a classe Scanner
        Scanner lerTeclado = new Scanner(System.in);
        System.out.print("Digite o seu nome: ");
        nome = lerTeclado.nextLine();
        // TUDO É LIDO COMO STRING!!!
        System.out.println("Olá " + nome);
    }
}
