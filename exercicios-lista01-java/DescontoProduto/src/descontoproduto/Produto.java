package descontoproduto;

import java.util.Scanner;

public class Produto {
    private String nome;
    private float preco;
    private float valorDesconto;
    private float precoComDesconto;
    
    Scanner lerDados = new Scanner(System.in);
    
    public void dadosProduto() {
        System.out.printf("Digite o nome do produto: ");
        this.nome = lerDados.nextLine();
        
        System.out.printf("Digite o preço do produto " + this.nome + ": R$ ");
        this.precoComDesconto = this.preco = lerDados.nextFloat();
    }
    
    public void calculaDesconto() {
        dadosProduto();
        
        if (this.preco > 100 && this.preco <= 200) {
            this.valorDesconto = 0.1f;
            this.precoComDesconto = this.preco - (this.preco * this.valorDesconto);
        } else if (this.preco > 200 && this.preco <= 300) {
            this.valorDesconto = 0.2f;
            this.precoComDesconto = this.preco - (this.preco * this.valorDesconto);
        } else if (this.preco > 300) {
            this.valorDesconto = 0.3f;
            this.precoComDesconto = this.preco - (this.preco * this.valorDesconto);
        }
        
        System.out.println("---------------------------------");
        System.out.println("Produto: " + this.nome);
        System.out.println("Preço: R$ " + this.preco);
        System.out.println("Desconto: " + (this.valorDesconto * 100) + "%");
        System.out.println("Preço Com Desconto: R$ " + this.precoComDesconto);
    }
}
