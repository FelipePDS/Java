package cinema;

public class CamaroteSuperior extends Vip {
    @Override
    public float totalIngresso() {
        setPreco(15);
        float total = getPreco() * 1.1f * 1.5f;
        return total;
    }
    
    @Override
    public String camarote() {
        setLocal("Bloco B");
        return getLocal();
    }
}
