package cinema;

public class Normal extends Ingresso {
    @Override
    public float totalIngresso() {
        setPreco(15);
        float total = getPreco();
        return total;
    }
}
