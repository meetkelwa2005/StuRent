package struts.actions;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import Stu.Rent.complain;
import java.text.DateFormat;
import java.util.Date;

public class ComplainActionCode   extends ActionSupport implements  ModelDriven
{
    complain comp=new complain();
    @Override
    public String execute() throws Exception 
    {
        SessionFactory  sf=
        new Configuration().configure().buildSessionFactory();
    Session session=sf.openSession();
    Transaction tx=session.beginTransaction();
    Date date=new Date();
    DateFormat df=DateFormat.getDateInstance(DateFormat.LONG);
    comp.setDate(df.format(date));
    comp.setStatus("Under process");
    session.save(comp);
    tx.commit();
    session.close();
    return SUCCESS;
    }
        public String changeStatus()
    {
        SessionFactory  sf=
        new Configuration().configure().buildSessionFactory();
    Session session=sf.openSession();
    Transaction tx=session.beginTransaction();
    complain complain=(complain)session.get(complain.class,comp.getComplainId());
    complain.setStatus(comp.getStatus());
    session.update(complain);
    tx.commit();
    session.close();
    return SUCCESS;
    }
            public String deleteComplain()
    {
        SessionFactory  sf=
        new Configuration().configure().buildSessionFactory();
    Session session=sf.openSession();
    Transaction tx=session.beginTransaction();
    complain complain=(complain)session.get(complain.class,comp.getComplainId());
    complain.setStatus(comp.getStatus());
    session.delete(complain);
    tx.commit();
    session.close();
    return SUCCESS;
    }
    
    @Override
    public complain getModel() 
    {
                return  comp;
    }

    
    
    
}
