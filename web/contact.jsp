
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
     
         <table align="center"  cellspacing="10px"  cellpadding="10px"  style="border:ridge">
                <tr align="center">
                    <td><img src="media/map.png"  width="80px" height="50px"><br>
                    120,Tulsi villa,<br>
                    Vijay Nagar,indore(MP)-Bharat</td>
                    <td><img src="media/gmail.png"  width="80px" height="50px"><br>
                    abc@gmail.com
                   </td>
                    <td><img src="media/circle.png"  width="80px" height="50px"><br>
                    +07412-67890<br>
                    +91-9123456731</td>
                </tr>
        
                <tr>
                    <td colspan="3">
               

                    <iframe width="520" height="400" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" id="gmap_canvas" src="https://maps.google.com/maps?width=520&height=400&hl=en&q=indore%20marriott%20hotel%20+(indore%20marriott%20hotel)&t=&z=12&ie=UTF8&iwloc=B&output=embed"></iframe> 
                    
                    
                    </td>
                        </tr>

            </table>
        </div>
        </div>
        
    </body>
</html>
