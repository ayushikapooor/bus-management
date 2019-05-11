package DAO;

import org.hibernate.*;
import org.hibernate.cfg.*;

public class UserDAO {
    
    public Student Authenticate(String uname)
    {
        Configuration cf = null;
        SessionFactory sf = null;
        Session session = null;
        Transaction t = null;
        Student u = null;
        try{ 
            cf = new Configuration();
            cf.configure("Student.cfg.xml");
            sf = cf.buildSessionFactory();
            session = sf.openSession();
            t = session.beginTransaction();
            Query q = session.createQuery("from Student where username = :uname");
            q.setString("uname",uname);
            u = (Student)q.uniqueResult();
            t.commit();
            return u;
           }catch(Exception e ){
             e.printStackTrace();
            }
        finally{
            session.close();
            sf.close();
        }
        return u;
    }
    
    
    public boolean checkStu(String uname , String pass){
        Student u = null;
        u = Authenticate(uname);
        if(u!=null && uname.equals(u.getUsername()) && pass.equals(u.getPassword()) ){
            return true;
        }else{
            return false;
        }
    }
    
    
    //Admin Details
    
     public Admin ad(String uname){
        
        Configuration cf = null;
        SessionFactory sf = null;
        Session s = null;
        Transaction t = null;
        Admin a = null;
        try{
            
            cf = new Configuration();
            cf.configure("Admin.cfg.xml");
            sf = cf.buildSessionFactory();
            s = sf.openSession();
            t = s.beginTransaction();
            Query q = s.createQuery("from Admin where username = :uname");
            q.setString("uname", uname);
            a = (Admin)q.uniqueResult();
            t.commit();
            return a;
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return a;
    }
    
    public boolean checkAdmin(String uname , String pass){
        Admin a = null;
        a = ad(uname);
        if(a!=null && uname.equals(a.getUsername()) && pass.equals(a.getPassword()))
            return true;
        else
            return false;
    }

    // Faculty Details
    
    public Management fc(String uname){
        
        Configuration cf = null;
        SessionFactory sf = null;
        Session s = null;
        Transaction t = null;
        Management f = null;
        try{
            
            cf = new Configuration();
            cf.configure("Management.cfg.xml");
            sf = cf.buildSessionFactory();
            s = sf.openSession();
            t = s.beginTransaction();
            Query q = s.createQuery("from Management where username = :uname");
            q.setString("uname", uname);
            f = (Management)q.uniqueResult();
            t.commit();
            return f;
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
    
    public boolean checkFaculty(String uname , String pass){
        Management f = null;
        f = fc(uname);
        if(f!=null && uname.equalsIgnoreCase(f.getUsername()) && pass.equalsIgnoreCase(f.getPassword()))
            return true;
        else
            return false;
    }
    
    
    //User Registration Code
    
    
   /* public void check(String username,String password,int studentid,String email,String address,String mobile,int pincode){
        Configuration cf = null;
        SessionFactory sf = null;
        Session session = null;
        try{
            cf = new Configuration();
            cf.configure("UserAdd.cfg.xml");
            sf = cf.buildSessionFactory();
            session = sf.openSession();
            Transaction tx = session.beginTransaction();
            Student u = new Student();
            u.setUsername(username);
            u.setPassword(password);
            
            session.save(u);
            tx.commit();
        } catch(Exception e){
            System.out.println(e);
            e.printStackTrace();
        } finally{
            session.close();
            sf.close();
        }
    }*/
}
