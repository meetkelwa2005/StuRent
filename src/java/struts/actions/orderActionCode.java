package struts.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import Stu.Rent.Orderproduct;

public class orderActionCode   extends ActionSupport implements  ModelDriven
{

    Orderproduct pro=new Orderproduct();

    @Override
    public String execute() throws Exception 
    {
    SessionFactory  sf=
        new Configuration().configure().buildSessionFactory();
    Session session=sf.openSession();
    Transaction tx=session.beginTransaction();
    session.save(pro);
    tx.commit();
    session.close();
    return SUCCESS;
    }
    
      @Override
    public Orderproduct getModel() 
    {
                    return pro;       
    }
    
}