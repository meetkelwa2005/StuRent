package struts.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;
import Stu.Rent.student_signup;

public class UserActionCode   extends ActionSupport implements  ModelDriven
{

    student_signup st=new student_signup();
    public UserActionCode() {
    }

    @Override
    public String execute() throws Exception 
    {
    SessionFactory  sf=
        new Configuration().configure().buildSessionFactory();
    Session session=sf.openSession();
    Transaction tx=session.beginTransaction();
    session.save(st);
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
    Criteria crit=session.createCriteria(student_signup.class)    ;
    
    crit.add(Restrictions.and(Restrictions.eq("id",st.getId()),
            Restrictions.eq("password",st.getPassword())));
    List<student_signup> list=crit.list();
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
    Criteria crit=session.createCriteria(student_signup.class)    ;
    
    crit.add(Restrictions.and(Restrictions.eq("id",st.getId()),
            Restrictions.eq("password",st.getPassword())));
    List<student_signup> list=crit.list();
    if(list.isEmpty())
    {
        return ERROR;
    }
    else
    {
        if(st.getNpassword().equals(st.getCnpassword()))
        {
            student_signup st1 =(student_signup)session.get(student_signup.class,st.getId());
            st1.setPassword(st.getNpassword());
            session.update(st1);//update tablename set pwd=? where uid=?
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
    Criteria crit=session.createCriteria(student_signup.class)    ;
    
    crit.add(Restrictions.and(Restrictions.eq("id",st.getId()),
            Restrictions.eq("password",st.getPassword())));
    List<student_signup> list=crit.list();
    if(list.isEmpty())
        return ERROR;
    else
    {
          student_signup st1=(student_signup)session.get(student_signup.class,st.getId());
        session.delete(st1);
        tx.commit();
        session.close(); 
    }
        return SUCCESS;
    }

    @Override
    public student_signup getModel() 
    {
                    return st;       
    }
    
}