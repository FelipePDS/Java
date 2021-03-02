package calculodearea;

import java.util.Scanner;

public class Areas {
    private float lado;
    private float base;
    private float altura;
    private float area;
    private String figuraGeometrica;
    
    public void escolherFiguraGeometrica() {
        Scanner valorTeclado = new Scanner(System.in);
        
        System.out.println("Digite: Q - para calcular a área do Quadrado | R - para calcular a área do Retângulo | T - para calcular a área do Triângulo: ");
        this.figuraGeometrica = valorTeclado.nextLine();
        
        calcularArea(this.figuraGeometrica);
    }
    
    public void calcularArea(String figuraGeometrica) {
        Scanner valorTeclado = new Scanner(System.in);
        
        if ("Q".equals(this.figuraGeometrica)) {
            System.out.println("Digite o valor do lado do Quadrado: ");
            this.lado = valorTeclado.nextFloat();
            
            this.area = this.lado * this.lado;
            
            System.out.println("A área do Quadrado é " + this.area);
        }
        
        else if ("R".equals(this.figuraGeometrica)) {
            System.out.println("Digite o valor da base do Retângulo: ");
            this.base = valorTeclado.nextFloat();
            System.out.println("Digite o valor da altura do Retângulo: ");
            this.altura = valorTeclado.nextFloat();
            
            this.area = this.base * this.altura;
            
            System.out.println("A área do Retângulo é " + this.area);
        }
        
        else if ("T".equals(this.figuraGeometrica)) {
            System.out.println("Digite o valor do lado do Triângulo: ");
            this.base = valorTeclado.nextFloat();
            System.out.println("Digite o valor da altura do Triângulo: ");
            this.altura = valorTeclado.nextFloat();
            
            this.area = (this.base * this.altura) / 2;
            
            System.out.println("A área do Triângulo é " + this.area);
        }
        
        else {
            System.out.println("Valor Inválido!");
        }
    }
}
