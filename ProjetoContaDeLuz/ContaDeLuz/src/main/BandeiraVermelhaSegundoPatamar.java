package main;

public class BandeiraVermelhaSegundoPatamar extends ContaDeLuz {
    private String nome = "Bandeira Vermelha - Segundo Patamar";

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
    @Override
    public Float calcularValorBandeiraNoConsumoDeEnergiaNoMes(Float consumoDeEnergiaNoMes) {
        tarifa.setBandeira(0.6243f);
        tarifa.setNomeBandeira(nome);
        
        float valorBandeira = consumoDeEnergiaNoMes * tarifa.getBandeira();
        
        tarifa.setValorBandeiraNoConsumoDeEnergiaNoMes(
            valorBandeira + (valorBandeira * tarifa.getIcms())
        );
        
        return tarifa.getValorBandeiraNoConsumoDeEnergiaNoMes();
    }
}
