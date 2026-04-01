
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
            font-size: 25px;
            margin-left: 40px;
            margin-top: 50px;
            color:black
        }
        h2{
            font-family: arial;
            font-size: 35px;
            margin-left: 40px;
            margin-top: 10px;
            color:black
        }
               p1{
            font-family: arial;
            font-size: 15px;
            margin-left: 40px;
            margin-top: 10px;
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
        <div style="width:100%;height:100%;background-color:rgba(250,250,250,0.7)">
            <%@taglib prefix="s" uri="/struts-tags" %>
              <table width="100%"class="tabtheme">
                <tr>
                     <td><img src="media/Stulogo.jpeg" width="140px" height="70px"> </td>

                    <td cssclass="current"><s:a href="homelink.action">Home</s:a></td>
                    <td><s:a href="aboutlink.action">About Us</s:a></td>
                    <td><s:a href="signuplink.action">siginup</s:a></td>
                    <td><s:a href="signinlink.action">siginin</s:a></td>
                    <td><s:a href="contactlink.action">Contact us</s:a></td>
                    <td>My Profile</td>
                   
                </tr>
                              </table>
     <h2><b>ABOUT US</b></h2>
<p1>StuRent is a simple and reliable platform designed especially for students who want to rent items for their daily needs.<br>
The aim of StuRent is to make renting easy, affordable, and convenient for students.<br>
Many students require items like furniture, electronics, bikes, study tables, or appliances for a short period of time.<br>
Buying these items can be expensive and inconvenient for students.<br>
At the same time, many people have usable items that are not in regular use.<br>
StuRent bridges this gap by connecting students with item owners on one platform.<br>
Students can browse available items and place a rental request according to their needs.<br>
Item owners can view the requests and rent out their items to students directly.<br>
Details such as price, rental duration, and pickup or delivery are discussed directly,<br><!-- comment --> 
making the process simple and flexible for both sides.</p1>

<h1>MISSION</h1>
<p1>Our mission is to provide students with an affordable and hassle-free rental<br>
    solution while promoting the reuse of resources through technology.</p1>

<h1>VISION</h1>
<p1>Our vision is to create a student-friendly rental ecosystem that reduces unnecessary<br> purchases 
    and supports a sustainable and cost-effective lifestyle.</p1>

<h1>WHY CHOOSE US</h1>

<p1>
Easy and student-friendly platform<br>
Affordable rental options for short-term use<br>
Direct communication between students and item owners<br>
Wide range of items including furniture, electronics, and daily essentials<br>
Promotes reuse and reduces waste
</p1>
        </div><!-- 00 -->    
    </body>
</html>
