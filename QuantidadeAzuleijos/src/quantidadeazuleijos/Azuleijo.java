package quantidadeazuleijos;

import java.util.Scanner;

public class Azuleijo {
    private float precoUnidade;
    private float base;
    private float altura;
    private float area;
    
    Scanner lerTeclado = new Scanner(System.in);
    
    public void pegaDados() {
        System.out.println("Digite a base do azuleijo: ");
        this.base = lerTeclado.nextFloat();
        
        System.out.println("Digite a altura do azuleijo: ");
        this.altura = lerTeclado.nextFloat();
    }

    public float calculaArea() {
        pegaDados();
        
        this.area = this.base * this.altura;
        
        return this.area;
    }
    
    public float pegaPreco() {
        System.out.println("Digite o preço da unidade do azuleijo: ");
        this.precoUnidade = lerTeclado.nextFloat();
        
        return this.precoUnidade;
    }
}
