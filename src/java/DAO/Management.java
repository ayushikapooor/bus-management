package DAO;


import java.io.Serializable;
import javax.persistence.*;
/**
 *
 * @author hp
 */

@Entity
@Table(name="Management")
public class Management {

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
   @Id
   @GeneratedValue
   private int id;
  
   private String username;
   private String password;
 
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
}