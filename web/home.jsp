
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
            
            <h1>one stop destination for all rental services<br></h1>
            
            <table border="0" class="news" width="55%">
                <tr align="center">
                    <td>
                <marquee scrollamount='12px' behavior='scroll' direction='left'>
                 Rent Every Product you want!! 
             </td>
                </tr>
            </table>
        </div>
        
    </body>
</html>
