 package Model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class schedule {
    @Id
    int busn;
    String busr;

    public int getBusn() {
        return busn;
    }

    public void setBusn(int busn) {
        this.busn = busn;
    }

   

    public String getBusr() {
        return busr;
    }

    public void setBusr(String busr) {
        this.busr = busr;
    }
    
    
}