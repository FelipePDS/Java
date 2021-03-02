package aula04;
public class Aula04 {
    public static void main(String[] args) {
        Caneta c1 = new Caneta();
        
        c1.modelo = "BIC";
        c1.cor = "vermelho";
        c1.ponta = 0.6f;
        c1.carga = 1;
        c1.tampada = false;
        c1.tampar();
        c1.mostraDados();
        c1.rabiscar();
    }
}
