package main;

public class Tarifas {
    private Float te = .29f;
    private Float valorTeNoConsumoDeEnergiaNoMes;
    private Float tusd = .30f;
    private Float valorTusdNoConsumoDeEnergiaNoMes;
    private Float icms = .25f;
    private Float valorIcmsNasTarifas;
    private Float bandeira;
    private String nomeBandeira;

    public String getNomeBandeira() {
        return nomeBandeira;
    }

    public void setNomeBandeira(String nomeBandeira) {
        this.nomeBandeira = nomeBandeira;
    }
    private Float valorBandeiraNoConsumoDeEnergiaNoMes;

    public Float getTe() {
        return te;
    }

    public void setTe(Float te) {
        this.te = te;
    }

    public Float getValorTeNoConsumoDeEnergiaNoMes() {
        return valorTeNoConsumoDeEnergiaNoMes;
    }

    public void setValorTeNoConsumoDeEnergiaNoMes(Float valorTeNoConsumoDeEnergiaNoMes) {
        this.valorTeNoConsumoDeEnergiaNoMes = valorTeNoConsumoDeEnergiaNoMes;
    }

    public Float getTusd() {
        return tusd;
    }

    public void setTusd(Float tusd) {
        this.tusd = tusd;
    }

    public Float getValorTusdNoConsumoDeEnergiaNoMes() {
        return valorTusdNoConsumoDeEnergiaNoMes;
    }

    public void setValorTusdNoConsumoDeEnergiaNoMes(Float valorTusdNoConsumoDeEnergiaNoMes) {
        this.valorTusdNoConsumoDeEnergiaNoMes = valorTusdNoConsumoDeEnergiaNoMes;
    }

    public Float getIcms() {
        return icms;
    }

    public void setIcms(Float icms) {
        this.icms = icms;
    }

    public Float getValorIcmsNasTarifas() {
        return valorIcmsNasTarifas;
    }

    public void setValorIcmsNasTarifas(Float valorIcmsNasTarifas) {
        this.valorIcmsNasTarifas = valorIcmsNasTarifas;
    }

    public Float getBandeira() {
        return bandeira;
    }

    public void setBandeira(Float bandeira) {
        this.bandeira = bandeira;
    }

    public Float getValorBandeiraNoConsumoDeEnergiaNoMes() {
        return valorBandeiraNoConsumoDeEnergiaNoMes;
    }

    public void setValorBandeiraNoConsumoDeEnergiaNoMes(Float valorBandeiraNoConsumoDeEnergiaNoMes) {
        this.valorBandeiraNoConsumoDeEnergiaNoMes = valorBandeiraNoConsumoDeEnergiaNoMes;
    }
}
