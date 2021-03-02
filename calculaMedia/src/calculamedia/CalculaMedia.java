package calculamedia;

import java.util.Scanner;

public class CalculaMedia {
    public static void main(String[] args) {
        // CALCULA A MÉDIA DE 3 NOTAS - FLOAT
        float n1;
        float n2;
        float n3;
        float n4;
        float media;
        
        Scanner lerTeclado = new Scanner(System.in);
        
        System.out.print("Digite a 1° nota: ");
        n1 = Float.parseFloat(lerTeclado.nextLine());
        
        System.out.print("Digite a 2° nota: ");
        n2 = Float.parseFloat(lerTeclado.nextLine());
        
        System.out.print("Digite a 3° nota: ");
        n3 = Float.parseFloat(lerTeclado.nextLine());
        
        media = (n1 + n2 + n3) / 3;
        
        System.out.println("A média é " + media);
    }
}
