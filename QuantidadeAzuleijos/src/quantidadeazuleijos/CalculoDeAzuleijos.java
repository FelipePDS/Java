package quantidadeazuleijos;

import java.util.ArrayList;
import java.util.Scanner;

public class CalculoDeAzuleijos {
    private ArrayList<Float> quantidadeDeUmLocal = new ArrayList<Float>();
    private float quantidadeTotal;
    private ArrayList<Float> precoDeUmLocal = new ArrayList<Float>();
    private float precoTotal;
    private String calcularMais;
    
    Scanner lerTeclado = new Scanner(System.in);
    
    public void calculaAzuleijos() {
        ArrayList<Local> local = new ArrayList<Local>();
        local.add(new Local());
        
        ArrayList<Azuleijo> azuleijo = new ArrayList<Azuleijo>();
        azuleijo.add(new Azuleijo());
        
        this.quantidadeDeUmLocal.add(local.get(local.size() - 1).calculaArea() / azuleijo.get(azuleijo.size() - 1).calculaArea());
        
        this.precoDeUmLocal.add(azuleijo.get(azuleijo.size() - 1).pegaPreco() * this.quantidadeDeUmLocal.get(this.quantidadeDeUmLocal.size() - 1));
        
        System.out.println("Quantidade de azuleijos: " + this.quantidadeDeUmLocal.get(this.quantidadeDeUmLocal.size() - 1));
        System.out.println("Preço a ser gasto: " + this.precoDeUmLocal.get(this.precoDeUmLocal.size() - 1));
        
        this.continuar();
    }
    
    public void continuar() {
        System.out.println("Quer calcular a quantidade de pisos de mais um local? Sim (S), Não (Qualquer outra tecla)");
        this.calcularMais = lerTeclado.nextLine();
        
        if("S".equals(this.calcularMais.toUpperCase())) {
            this.calculaAzuleijos();
        } else {
            calculaAzuleijosTotal();
        }
    }
    
    public void calculaAzuleijosTotal() {
        for (int i=0; i < this.quantidadeDeUmLocal.size(); i++) {
            this.quantidadeTotal += quantidadeDeUmLocal.get(i);
        }
            
        for (int i=0; i < this.precoDeUmLocal.size(); i++) {
            this.precoTotal += this.precoDeUmLocal.get(i);
        }
            
        System.out.println("Quantidade total de azuleijos de todas as áreas: " + this.quantidadeTotal);
        System.out.println("Quantidade total de azuleijos a ser pago de todas as áreas: " + this.precoTotal);
    }
}
