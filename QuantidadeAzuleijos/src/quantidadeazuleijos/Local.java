package quantidadeazuleijos;

import java.util.Scanner;

public class Local {
    private float base;
    private float altura;
    private float area;
    
    public void pegaDados() {
        Scanner lerTeclado = new Scanner(System.in);
        
        System.out.println("Digite a base do local: ");
        this.base = lerTeclado.nextFloat();
        
        System.out.println("Digite a altura do local: ");
        this.altura = lerTeclado.nextFloat();
    }
    
    public float calculaArea() {
        pegaDados();
        
        this.area = this.base * this.altura;
        
        return this.area;
    }
}
