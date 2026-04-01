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
                   
                    
                    <td><s:a href="loadpage.action">Home</s:a></td>
                    <td><s:a href="vieworderlink.action">view Order details</s:a></td>
                    <td><s:a href="viewcomplainlink.action">view complain</s:a></td>
                    <td><s:a href="authacclink.action">account</s:a></td>
                    <td><s:a href="authpwdsetlink.action">settings</s:a></td>
                    <td><s:a href="loadpage.action">Signout</s:a></td>
                  

                </tr>
            </table>
            
           <%@taglib prefix="s1"  uri="/struts-dojo-tags" %>

<s1:head debug="true"/>   
<iframe src="CallComplain.jsp" width="90%" height="100px">
</iframe>
<div class="formtheme">
<br>
<br>
<hr>
<h2>COMPLAIN STATUS FORM</h2>
<s:form action="updatestatuscode.action">
    <s:textfield label="Complain Id" name="complainId"/>
    <s:radio list="{'under process','solved'}" label="Status" name="status"/>
    <s:submit value="Update"/>
</s:form>
<hr>
<h2>DELETE COMPLAIN</h2>
<s:form action="deletecomplaincode.action">
    <s:textfield label="Complain Id" name="complainId"/>
    <s:submit value="Delete"/>
</s:form>
<hr>
    
        </div>
        
    </body>
</html>