package main;

public class ContaDeLuz {
    private Float leituraAnterior;
    private Float leituraAtual;
    private Float consumoDeEnergiaNoMes;
    private Float valorTotalDosTributos;

    public Float getLeituraAnterior() {
        return leituraAnterior;
    }

    public void setLeituraAnterior(Float leituraAnterior) {
        this.leituraAnterior = leituraAnterior;
    }

    public Float getLeituraAtual() {
        return leituraAtual;
    }

    public void setLeituraAtual(Float leituraAtual) {
        this.leituraAtual = leituraAtual;
    }

    public Float getConsumoDeEnergiaNoMes() {
        return consumoDeEnergiaNoMes;
    }

    public void setConsumoDeEnergiaNoMes(Float consumoDeEnergiaNoMes) {
        this.consumoDeEnergiaNoMes = consumoDeEnergiaNoMes;
    }

    public Float getValorTotalDosTributos() {
        return valorTotalDosTributos;
    }

    public void setValorTotalDosTributos(Float valorTotalDosTributos) {
        this.valorTotalDosTributos = valorTotalDosTributos;
    }
    
    Clientes cliente = new Clientes();
    
    Tarifas tarifa = new Tarifas();
    
    public ContaDeLuz(Float leituraAnterior, Float leituraAtual) {
        this.leituraAnterior = leituraAnterior;
        this.leituraAtual = leituraAtual;
        
        this.consumoDeEnergiaNoMes = this.leituraAtual - this.leituraAnterior;
    }
    
    public ContaDeLuz() {
        
    }
    
    public Float calcularValorTeNoConsumoDeEnergiaNoMes() {
        tarifa.setValorTeNoConsumoDeEnergiaNoMes(
            consumoDeEnergiaNoMes * tarifa.getTe()
        );
        
        return tarifa.getValorTeNoConsumoDeEnergiaNoMes();
    }
    
    public Float calcularValorTusdNoConsumoDeEnergiaNoMes() {
        tarifa.setValorTusdNoConsumoDeEnergiaNoMes(
            consumoDeEnergiaNoMes * tarifa.getTusd()
        );
        
        return tarifa.getValorTusdNoConsumoDeEnergiaNoMes();
    }
    
    public Float calcularValorIcmsNasTarifas() {
        float totalTarifa = calcularValorTeNoConsumoDeEnergiaNoMes() + calcularValorTusdNoConsumoDeEnergiaNoMes();
        
        tarifa.setValorIcmsNasTarifas(
            totalTarifa + (totalTarifa * tarifa.getIcms())
        );
        
        return tarifa.getValorIcmsNasTarifas();
    }
    
    public Float calcularValorBandeiraNoConsumoDeEnergiaNoMes(Float consumoDeEnergiaNoMes) {
        tarifa.setBandeira(0f);
        tarifa.setNomeBandeira("");
        
        float valorBandeira = consumoDeEnergiaNoMes * tarifa.getBandeira();
        
        tarifa.setValorBandeiraNoConsumoDeEnergiaNoMes(
            valorBandeira + (valorBandeira * tarifa.getIcms())
        );
        
        return tarifa.getValorBandeiraNoConsumoDeEnergiaNoMes();
    }
    
    public Float valorBandeira() {             
        if (this.consumoDeEnergiaNoMes <= 100) {
            BandeiraVerde bandeiraVerde = new BandeiraVerde();
            return bandeiraVerde.calcularValorBandeiraNoConsumoDeEnergiaNoMes(this.consumoDeEnergiaNoMes);
        } else if (this.consumoDeEnergiaNoMes > 100 && this.consumoDeEnergiaNoMes <= 150) {
            BandeiraAmarela bandeiraAmarela = new BandeiraAmarela();
            return bandeiraAmarela.calcularValorBandeiraNoConsumoDeEnergiaNoMes(this.consumoDeEnergiaNoMes);
        } else if (this.consumoDeEnergiaNoMes > 150 && this.consumoDeEnergiaNoMes <= 200) {
            BandeiraVermelhaPrimeiroPatamar bandeiraVermelhaPrimeiroPatamar = new BandeiraVermelhaPrimeiroPatamar();
            return bandeiraVermelhaPrimeiroPatamar.calcularValorBandeiraNoConsumoDeEnergiaNoMes(this.consumoDeEnergiaNoMes);
        } else {
            BandeiraVermelhaSegundoPatamar bandeiraVermelhaSegundoPatamar = new BandeiraVermelhaSegundoPatamar();
            return bandeiraVermelhaSegundoPatamar.calcularValorBandeiraNoConsumoDeEnergiaNoMes(this.consumoDeEnergiaNoMes);
        }
    }
    
    public Float calcularValorTotalDosTributos() {
        valorTotalDosTributos = calcularValorIcmsNasTarifas() + valorBandeira();
        
        return valorTotalDosTributos;
    }
}
