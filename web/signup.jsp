
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
            font-size: 20px;
         
            margin-top: 90px;
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
        .formtheme{
            width:400px;
            height: 500px;
            background-color:rgba(255,255,255,0.6);
            margin:auto;
            margin-top:80px;
            box-shadow: 3px 3px 3px rgba(0,0,0,0.7);
           
        }
    </style>

    <body>
        <div style="width:100%;height:100%;background-color:rgba(250,250,250,0.7)">
            <%@taglib prefix="s" uri="/struts-tags" %>
              <table width="100%"class="tabtheme">
                <tr>
                     <td><img src="media/Stulogo.jpeg" width="140px" height="70px"> </td>
                    <td class="current">Home</td>
                    <td><s:a href="homelink.action">Home</s:a></td>
                    <td><s:a href="aboutink.action">About Us</s:a></td>

                    <td><s:a href="signuplink.action">siginup</s:a></td>
                    <td><s:a href="signinlink.action">siginin</s:a></td>
                    <td><s:a href="contactlink.action">Contact us</s:a></td>
                    <td>My Profile</td>
                    

                </tr>
            </table>
                    <div  class="formtheme">
                    <%@taglib prefix="s" uri="/struts-tags" %>
                    <%@taglib prefix="s1" uri="/struts-dojo-tags" %>
                    <s1:head debug="true"/>            
            <h1>User Signup</h1>
            <s:form action="signupcode.action" enctype="multipart/form-data">
                <s:textfield label="Id" name="id"/>
                <s:password label="Password" name="password"/>
                <s:textfield label="Full name" name="fullname"/>
                <s:textfield label="Aadhar" name="adhar"/>
                <s:file label="Upload photo" name="photo"/>
                <s:textfield label="Gender" name="gender"/>
                <s:textfield label="Contact" name="contact"/>
                <s:textfield label="Email" name="mailid"/>
                <s1:autocompleter label="city" name="city"
                list="{'agarmalwa','alirajpur','annuppur','ashoknagar','balaghat','barwani','betul','bhind','bhopal',
                'burhanpur','chhatarpur','chhindwara','damoh','datia','dewas','dhar','dindori','guna','gwalior','harda',
                'narmadapuram','indore','jabalpur','jhabua','katni','khandwa','khargone','mandla','mandsaur','morena',
                'narsinghpur','neemuch','niwari','panna','raisen','rajgarh','ratlam','rewa','sagar','satna','sehore','seoni',
                'shahdol','shajapur','sheopur','shivpuri','sidhi','singrauli','tikamgarh','ujjain','umaria','vidisha'}" showDownArrow="true" autoComplete="false"/>
                <s1:datetimepicker label="DOB" name="DOB"/>
                <s:submit value="Submit"/>
            </s:form>
      
         
                    
        </div>
        
    </body>
</html>
