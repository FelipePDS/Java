package aula04;
public class Caneta {
    String modelo;
    String cor;
    float ponta;
    int carga;
    boolean tampada;
    
    void rabiscar() {
        if (this.tampada == true) {
            System.out.println("ERRO!");
        } else {
            System.out.println("RABISCANDO!!!");
        }
    }
    
    void tampar() {
        this.tampada = true;
    }
    
    void destampar() {
        this.tampada = false;
    }
    
    void mostraDados() {
        System.out.println("Essa é uma caneta: " + this.modelo);
        System.out.println("A cor da caneta é: " + this.cor);
        System.out.println("A ponta da caneta está em: " + this.ponta * 100 + "%");
        System.out.println("Carga da caneta: " + this.carga);
        System.out.println("Essa caneta está tampada?: " + this.tampada);
    }
}
