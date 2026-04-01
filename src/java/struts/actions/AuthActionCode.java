package struts.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import Stu.Rent.Auth;

import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;


public class AuthActionCode   extends ActionSupport implements  ModelDriven
{
    Auth auth=new Auth();
    @Override
    public String execute() throws Exception 
    {
    SessionFactory  sf=
        new Configuration().configure().buildSessionFactory();
    Session session=sf.openSession();
    Transaction tx=session.beginTransaction();
    session.save(auth);
    tx.commit();
    session.close();
    return SUCCESS;
    }  
    public String checkLogin()
    {
    SessionFactory  sf=
        new Configuration().configure().buildSessionFactory();
    Session session=sf.openSession();
    Transaction tx=session.beginTransaction();
    Criteria crit=session.createCriteria(Auth.class)    ;
    
    crit.add(Restrictions.and(Restrictions.eq("id",auth.getId()),
            Restrictions.eq("pwd",auth.getPwd())));
    List<Auth> list=crit.list();
   if(list.isEmpty())
      return ERROR;
    else
        return SUCCESS;
    }
     public String changePassword()
    {
    SessionFactory  sf=
        new Configuration().configure().buildSessionFactory();
    Session session=sf.openSession();
    Transaction tx=session.beginTransaction();
    Criteria crit=session.createCriteria(Auth.class)    ;
    
    crit.add(Restrictions.and(Restrictions.eq("id",auth.getId()),
            Restrictions.eq("pwd",auth.getPwd())));
    List<Auth> list=crit.list();
    if(list.isEmpty())
    {
        return ERROR;
    }
    else
    {
        if(auth.getNpwd().equals(auth.getCnpwd()))
        {
            Auth auth1 =(Auth)session.get(Auth.class,auth.getId());
            auth1.setPwd(auth.getNpwd());
            session.update(auth1);//update tablename set pwd=? where uid=?
            tx. commit();
            session.close();
        }
    }
        return SUCCESS;
    }
    
        
        public String deleteAccount()
    {
    SessionFactory  sf=
        new Configuration().configure().buildSessionFactory();
    Session session=sf.openSession();
    Transaction tx=session.beginTransaction();
    Criteria crit=session.createCriteria(Auth.class)    ;
    
    crit.add(Restrictions.and(Restrictions.eq("id",auth.getId()),
            Restrictions.eq("pwd",auth.getPwd())));
    List<Auth> list=crit.list();
    if(list.isEmpty())
        return ERROR;
    else
    {
          Auth auth1=(Auth)session.get(Auth.class,auth.getId());
        session.delete(auth1);
        tx.commit();
        session.close(); 
    }
        return SUCCESS;
    }
    
    @Override
    public Auth getModel() 
    {
                return  auth;
    }

    
    
    
}
