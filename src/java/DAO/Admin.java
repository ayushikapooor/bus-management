package DAO;


import java.io.Serializable;
import javax.persistence.*;
/**
 *
 * @author hp
 */

@Entity
@Table(name="Admin")
public class Admin {
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

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
}

