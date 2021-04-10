package cinema;

public class CamaroteInferior extends Vip {
    @Override
    public float totalIngresso() {
        setPreco(15);
        float total = getPreco() * 1.1f;
        return total;
    }
    
    @Override
    public String camarote() {
        setLocal("Bloco A");
        return getLocal();
    }
}
