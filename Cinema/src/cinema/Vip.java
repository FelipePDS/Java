package cinema;

public class Vip extends Ingresso {
    private String local;
    
    @Override
    public float totalIngresso() {
        setPreco(15);
        float total = getPreco() * 1.1f;
        return total;
    }
    
    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }
    
    public String camarote() {
        setLocal("");
        return getLocal();
    }
}
