<%@ page import="org.hibernate.SessionFactory,
                 org.hibernate.Transaction,
                 org.hibernate.cfg.Configuration,
                 org.hibernate.classic.Session" %>

<%@ page import="org.hibernate.Criteria" %>
<%@ page import="Stu.Rent.complain" %>
<%@ page import="java.util.List" %>

<%
    SessionFactory sf = new Configuration().configure().buildSessionFactory();
    Session session1 = sf.openSession();
    Transaction tx = session1.beginTransaction();

    Criteria crit = session1.createCriteria(complain.class);
    List<complain> list = crit.list();
%>

<table width="90%" align="center">

    <tr align="center" style="background-color:white">
        <td>COMPLAIN ID</td>
        <td>STUDENT ID</td>
        <td>PRODUCT ID</td>
        <td>COMPLAIN</td>
        <td>DATE</td>
        <td>STATUS</td>
    </tr>

<%
    for (complain data : list)
    {
%>
    <tr align="center">
        <td><%= data.getComplainId() %></td>
        <td><%= data.getStudent_id() %></td>
        <td><%= data.getProduct_id() %></td> 
        <td><%= data.getComplain() %></td>
        <td><%= data.getDate() %></td>
        <td><%= data.getStatus() %></td>
    </tr>
<%
    }
%>

</table>
    