package Model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


public class UsserDAO {
    public void AddDetail(schedule s) {

        Configuration cf = null;
        SessionFactory sf = null;
        Session session = null;
        Transaction t = null;
       

        try {

            cf = new Configuration();
            cf.configure();
            sf = cf.buildSessionFactory();
            session = sf.openSession();
            t = session.beginTransaction();
            session.save(s);
            t.commit();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {

            session.close();
            sf.close();

        }

    }

}