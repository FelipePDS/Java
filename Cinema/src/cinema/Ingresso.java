package cinema;

public class Ingresso {
    
    private float preco;

    public float getPreco() {
        return preco;
    }

    public void setPreco(float preco) {
        this.preco = preco;
    }
    
    public float totalIngresso() {
        setPreco(15);
        float total = getPreco();
        return total;
    }
}
