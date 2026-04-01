<html>
    <style>
        body
        {
            background-image: url('media/StuRent.jpg');
            background-size: 100%;
        }
        .tabtheme
        {
            background-color: rgba(250,250,250,0.6);
            color: black;
            font-size: 16px;
            text-align: center;
            font-family: arial;
            text-transform: uppercase;
            height:50px;
            animation:menutheme 3s;
            position: relative;
            width:100%;
        }
        @keyframes menutheme{
            from{
                top:-100px;
            }
            to{
                top:0px;
            }
        }
        h1{
            font-family: arial;
            font-size: 70px;
            margin-left: 400px;
            margin-top: 100px;
            color:black
        }
        .current
        {
            background-color: black;
            color:white;
        }
        .news
        {
            margin-left: 400px;
            margin-top: -40px;
            color:black;
            font-family: OCR A;
        }
    </style>

    <body>
        <div style="width:100%;height:180%;background-color:rgba(250,250,250,0.7)">
            <%@taglib prefix="s" uri="/struts-tags" %>
              <table width="100%"class="tabtheme">
                <tr>
                     <td><img src="media/Stulogo.jpeg" width="140px" height="70px"> </td>
                   
                    
                    <td cssClass="current"><s:a href="loadpage.action">Home</s:a></td>
                    <td><s:a href="loadpage.action">Rent products</s:a></td>
                    <td><s:a href="complainlink.action">complain</s:a></td>
                     <td><s:a href="useracclink.action">account</s:a></td>
                    <td><s:a href="pwdsetlink.action">settings</s:a></td>
                    <td><s:a href="loadpage.action">Signout</s:a></td>

                </tr>
            </table>
            
           <%@taglib prefix="s1"  uri="/struts-dojo-tags" %>

<s1:head debug="true"/>    
 <form action="ordercode.action">
    <table style="background-color:white; margin-left:400px; margin-top:30px; align-content:center">
 
              <tr>
            <td>
                <s:textfield label="Student Id" name="student_id"/>
            </td>
            <td>
                <s:textfield label="Product Name" name="productname"/>
            </td>
        </tr>

        <tr>
            <td>
                <s:textfield label="quantity" name="quantity"/>
            </td>
            <td>
                <s:textfield label="price" name="price"/>
            </td>
        </tr>
               <tr>
            <td>
                <s:textarea label="address" name="address"/>
            </td>
        </tr>
        <tr>
            <td>
                <s:textfield label="City" name="city"/>
            </td>
            <td>
                <s:textfield label="Contact" name="contact"/>
            </td>
            <td>
                <s:submit label="submit"/>
            </td>
        </tr>

    </table>
</form>
            
<table width="150%" cellspacing="10" cellpadding="10">
    
    <!-- ROW 1 -->
    <tr align="center">
        <td>
            <img src="media/ac.jpg" width="200" height="200"><br>
            Product Name: AC<br>
            Rental: 10/-month
        </td>

        <td>
            <img src="media/studytable.png" width="200" height="200"><br>
            Product Name: TABLE<br>
            Rental: 10/-month
        </td>

        <td>
            <img src="media/chair.jpg" width="200" height="200"><br>
            Product Name: CHAIR<br>
            Rental: 10/-month
        </td>

        <td>
            <img src="media/cooler.jpg" width="200" height="200"><br>
            Product Name: COOLER<br>
            Rental: 10/-month
        </td>

        <td>
            <img src="media/gyser.jpg" width="200" height="200"><br>
            Product Name: GYSER<br>
            Rental: 10/-month
        </td>
    </tr>

    <!-- ROW 2 -->
    <tr align="center">
        <td>
            <img src="media/heater.png" width="200" height="200"><br>
            Product Name: HEATER<br>
            Rental: 10/-month
        </td>

        <td>
            <img src="media/induction.jpg" width="200" height="200"><br>
            Product Name: INDUCTION<br>
            Rental: 10/-month
        </td>

        <td>
            <img src="media/kettle.jpg" width="200" height="200"><br>
            Product Name: KETTLE<br>
            Rental: 10/-month
        </td>

        <td>
            <img src="media/sofa.jpg" width="200" height="200"><br>
            Product Name: SOFA<br>
            Rental: 10/-month
        </td>

        <td>
            <img src="media/stove.jpg" width="200" height="200"><br>
            Product Name: STOVE<br>
            Rental: 10/-month
        </td>
    </tr>

    <!-- ROW 3 -->
    <tr align="center">
        

        <td>
            <img src="media/iron.jpg" width="200" height="200"><br>
            Product Name: IRION<br>
            Rental: 10/-month
        </td>

        <td>
            <img src="media/cycle.jpg" width="200" height="200"><br>
            Product Name: CYCLE<br>
            Rental: 10/-month
        </td>

        <td>
            <img src="media/bed.jpg" width="200" height="200"><br>
            Product Name: BED<br>
            Rental: 10/-month
        </td>

        <td>
            <img src="media/access.jpg" width="200" height="200"><br>
            Product Name: ACCESS<br>
            Rental: 10/-month
        </td>
        
         <td>
             <img src="media/lamp.jpg" width="200" height="200"><br>
            Product Name: LAMP<br>
            Rental: 10/-month
        </td>
        
         <td>
             <img src="media/shine.jpeg" width="200" height="200"><br>
            Product Name: SHINE<br>
            Rental: 10/-month
        </td>
        
         <td>
             <img src="media/wakefit.jpg" width="200" height="200"><br>
            Product Name: WAKEFIT<br>
            Rental: 10/-month
        </td>
        

    </tr>

</table>   
        </div>
        
    </body>
</html>
