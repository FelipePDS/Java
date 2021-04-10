package cinema;

import java.util.Scanner;

public class Cinema {
    public static void main(String[] args) {
        Scanner leitura = new Scanner(System.in);
        
        System.out.println("Bem vindo ao sistema de compra de ingresso!");
        
        int tipoIngresso;
        do {
            System.out.printf("\nEscolha o tipo de ingresso: 1-Normal ou 2-Vip: ");
            tipoIngresso = leitura.nextInt();
        } while (tipoIngresso != 1 && tipoIngresso != 2);
        
        if (tipoIngresso == 1) {
            Normal ingresso1 = new Normal();
            System.out.println("\nO preço do ingresso é R$ " + ingresso1.totalIngresso());
        } else if (tipoIngresso == 2) {
            int tipoCamarote;
            do {
                System.out.printf("\nEscolha o tipo de camarote: 1-Inferior ou 2-Superior: ");
                tipoCamarote = leitura.nextInt();
            } while (tipoCamarote != 1 && tipoCamarote != 2);
            
            if (tipoCamarote == 1) {
                CamaroteInferior camarote1 = new CamaroteInferior();
                System.out.println("\nPreço do ingresso: " + camarote1.totalIngresso());
                System.out.println("Local do camarote: " + camarote1.camarote());
            } else if (tipoCamarote == 2) {
                CamaroteSuperior camarote1 = new CamaroteSuperior();
                System.out.println("\nPreço do ingresso: " + camarote1.totalIngresso());
                System.out.println("Local do camarote: " + camarote1.camarote());
            }
        }
    }
}
