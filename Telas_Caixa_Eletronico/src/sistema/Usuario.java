package sistema;

import java.util.TimerTask;
import java.util.Timer;

public class Usuario {
    private String name = "admin";
    private String password = "1234";
    private Float balance = 100f;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public Float getBalance() {
        return balance;
    }

    public void setBalance(Float balance) {
        this.balance = balance;
    }
}
