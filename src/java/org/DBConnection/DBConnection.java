
package org.DBConnection;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class DBConnection {
 
    static SessionFactory sf;

    static
    {
        sf = new Configuration().configure().buildSessionFactory();
    }

    public static SessionFactory emergencyConnection()
    {
        if (sf.isClosed())
            sf = new Configuration().configure().buildSessionFactory();
        return sf;
    }
}

