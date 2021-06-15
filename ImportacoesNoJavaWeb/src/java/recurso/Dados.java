package recurso;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Dados {
    private static Date data = new Date();
    
    public static String dataAtual() {
        SimpleDateFormat formatadorDeData = new SimpleDateFormat("dd/MM/yyyy");
        
        return formatadorDeData.format(data);
    }
    
    public static String horaAtual() {
        SimpleDateFormat formatadorDeHora = new SimpleDateFormat("HH:mm:ss");
        
        return formatadorDeHora.format(data);
    }
}
