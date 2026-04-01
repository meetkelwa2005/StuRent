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
                .formtheme{
            width:300px;
            height: 100px;
            background-color:rgba(255,255,255,0.6);
            margin:auto;
            margin-top:270px;
            box-shadow: 3px 3px 3px rgba(0,0,0,0.7);
            

        }
    </style>

    <body>
                <div style="width:100%;height:100%;background-color:rgba(250,250,250,0.7)">
            <%@taglib prefix="s" uri="/struts-tags" %>
              <table width="100%"class="tabtheme">
                <tr>
                     <td><img src="media/Stulogo.jpeg" width="140px" height="70px"> </td>
                   
                    
                    <td><s:a href="loadpage.action">Home</s:a></td>
                    <td><s:a href="loadpage.action">Rent products</s:a></td>
                    <td><s:a href="complainlink.action">complain</s:a></td>
                     <td><s:a href="useracclink.action">account</s:a></td>
                    <td><s:a href="pwdsetlink.action">settings</s:a></td>
                    <td><s:a href="loadpage.action">Signout</s:a></td>

                </tr>
            </table>
            
           <%@taglib prefix="s1"  uri="/struts-dojo-tags" %>

<s1:head debug="true"/>    
<div class="formtheme"></div>

            
               <s:form action="complaincode.action">
                        <s:textfield label="student_id" name="student_id"/>
                        <s:textfield label="product_id" name="product_id"/>
                        <s:textarea label="complain" name="complain"/>
                        <s:submit value="submit"/>
        </s:form>
         
                 
  </div>
    </body>
</html>
