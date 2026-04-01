<%@ page import="org.hibernate.SessionFactory,
                 org.hibernate.Transaction,
                 org.hibernate.cfg.Configuration,
                 org.hibernate.classic.Session" %>

<%@ page import="org.hibernate.Criteria" %>
<%@ page import="Stu.Rent.Orderproduct" %>
<%@ page import="java.util.List" %>

<%
    SessionFactory sf = new Configuration().configure().buildSessionFactory();
    Session session1 = sf.openSession();
    Transaction tx = session1.beginTransaction();

    Criteria crit = session1.createCriteria(Orderproduct.class);
    List<Orderproduct> list = crit.list();
%>

<table width="90%" align="center">

    <tr align="center" style="background-color:white">
        <td>ORDER ID</td>
        <td>STUDENT ID</td>
        <td>PRODUCT NAME</td>
        <td>QUANTITY</td>
        <td>PRICE</td>
        <td>ADDRESS</td>
        <td>CITY</td>
        <td>CONTACT</td>
    </tr>

<%
    for (Orderproduct data : list)
    {
%>
    <tr align="center">
        <td><%= data.getOrder_id()%></td>
        <td><%= data.getStudent_id() %></td>
        <td><%= data.getProductname() %></td> 
        <td><%= data.getQuantity() %></td>
        <td><%= data.getPrice() %></td>
        <td><%= data.getAddress() %></td>
        <td><%= data.getCity()%></td>
        <td><%= data.getContact()%></td>
    </tr>
<%
    }
%>

</table>
    
  