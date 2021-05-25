package main;

public class BandeiraVermelhaPrimeiroPatamar extends ContaDeLuz {
    private String nome = "Bandeira Vermelha - Primeiro Patamar";

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
    @Override
    public Float calcularValorBandeiraNoConsumoDeEnergiaNoMes(Float consumoDeEnergiaNoMes) {
        tarifa.setBandeira(0.04169f);
        tarifa.setNomeBandeira(nome);
        
        float valorBandeira = consumoDeEnergiaNoMes * tarifa.getBandeira();
        
        tarifa.setValorBandeiraNoConsumoDeEnergiaNoMes(
            valorBandeira + (valorBandeira * tarifa.getIcms())
        );
        
        return tarifa.getValorBandeiraNoConsumoDeEnergiaNoMes();
    }
}
