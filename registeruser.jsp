<%@ page language="java" contentType="text/html; charset=iso-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Registration Page</title>
<style type="text/css">
<!--
body {
	background-color: #FFFFFF;
}
.style8 {	color: #FF0000;
	font-weight: bold;
}
.style7 {
	font-size: 24px;
	font-weight: bold;
	color: #FF0000;
}
.style11 {color: #FFFFFF}
.style12 {color: #0000FF; font-weight: bold; }
-->
</style></head>
<body>

<%
	
      	
	

      	try 
	{
      		
      		 ArrayList a1=new ArrayList();
      		 ArrayList a2=new ArrayList();
      		 ArrayList a3=new ArrayList();
      		 ArrayList a4=new ArrayList();
      		 ArrayList a5=new ArrayList();
      		 ArrayList a6=new ArrayList();
      		 
           
           String query="select * FROM rules "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
          
	   while ( rs.next() )
	   {
			a1.add(rs.getString("habits"));
			a2.add(rs.getString("attitudes"));
			a3.add(rs.getString("tastes"));
			a4.add(rs.getString("moral"));
			a5.add(rs.getString("economic"));
			
		
	   }
	  
String query5="select fname FROM user "; 
Statement st5=connection.createStatement();
ResultSet rs5=st5.executeQuery(query5);

while ( rs5.next() )
{
	a6.add(rs5.getString("fname"));

}
		
		
%>
<div align="center">
  <p class="style8">&nbsp; <u><font size="5">New User Registration Details</font></u></p>
  <p class="style8">&nbsp;  </p>
</div>
<form id="form1" name="form1" method="post"  enctype="multipart/form-data" action="customerregster.jsp">

  <div align="center">
    <table width="431" border="0" style="border-collapse: collapse" bordercolor="#111111" cellpadding="0" cellspacing="0" height="613">
      <tr>
        <td height="23" colspan="2" bgcolor="#FFFFFF"><p><img src="register-banner.jpg" width="748" height="218"></p>
        <p>&nbsp;</p></td>
      </tr>
      <tr>
        <td width="157" height="23" bgcolor="#FFFFFF"><div align="left" class="style12"> User Name </div></td>
        <td width="173" height="23" bgcolor="#FFFFFF"><span class="style11">
          <label>
          </span>
          <div align="left" class="style11">
            <input type="text" name="cname" id="cname" size="20" />
            </label>
        </div></td>
      </tr>
      <tr>
        <td height="23" bgcolor="#FFFFFF"><div align="left" class="style12">Password</div></td>
        <td height="23" bgcolor="#FFFFFF"><span class="style11">
          <label>
          </span>
          <div align="left" class="style11">
            <input type="password" name="pass" id="pass" size="20" />
            </label>
        </div></td>
      </tr>
      <tr>
        <td height="19" bgcolor="#FFFFFF"><div align="left" class="style12">Full Name </div></td>
        <td height="19" bgcolor="#FFFFFF"><span class="style11">
          <label>
          </span>
          <div align="left" class="style11">
            <input type="text" name="T1" id="T1" size="20">
            </label>
        </div></td>
      </tr>
      <tr>
        <td height="36" bgcolor="#FFFFFF"><div align="left" class="style12">E-Mail(test@gmail.com)</div></td>
        <td height="36" bgcolor="#FFFFFF"><div align="left" class="style11">
          <input type="text" name="T4" id="T4" size="20">
        </div></td>
      </tr>
      <tr>
        <td height="36" bgcolor="#FFFFFF"><div align="left" class="style12">DOB(DD/MM/YYYY)</div></td>
        <td height="36" bgcolor="#FFFFFF"><div align="left" class="style11">
          <div align="left">
            <input type="text" name="T5" id="T5" size="20">
          </div>
        </div></td>
      </tr>
      <tr>
        <td height="22" bgcolor="#FFFFFF"><div align="left" class="style12">Mobile NO(10 Digits)</div></td>
        <td height="22" bgcolor="#FFFFFF"><div align="left" class="style11">
          <input type="text" name="T3"  id="T3" size="20">
        </div></td>
      </tr>
      <tr>
        <td height="22" bgcolor="#FFFFFF"><div align="left" class="style12">Select Habits </div></td>
        <td height="22" bgcolor="#FFFFFF"><div align="left" class="style11">
          <label>
          <select name="select" id="select">
		  <option selected>--SELECT--</option>
          <% for(int i=0;i<a1.size();i++)
        	  {
        	  %>
           <option><%= a1.get(i)%></option>
           
           <%}%>
           </select>
          </label>
        </div></td>
      </tr>
      <tr>
        <td height="22" bgcolor="#FFFFFF"><div align="left" class="style12">Select Attitudes </div></td>
        <td height="22" bgcolor="#FFFFFF"><div align="left" class="style11">
          <select name="select2" id="select2">
		   <option selected>--SELECT--</option>
           <% for(int i=0;i<a2.size();i++)
        	  {
        	  %>
           <option><%= a2.get(i)%></option>
           
           <%}%>
          </select>
        </div></td>
      </tr>
      <tr>
       <td height="22" bgcolor="#FFFFFF"><div align="left" class="style12">Select Tastes </div></td>
        <td height="22" bgcolor="#FFFFFF"><div align="left" class="style11">
          <select name="select3" id="select3">
		   <option selected>--SELECT--</option>
           <% for(int i=0;i<a3.size();i++)
        	  {
        	  %>
           <option><%= a3.get(i) %></option>
           
           <%}%>
          </select>
        </div></td>
      </tr>
      <tr>
       <td height="22" bgcolor="#FFFFFF"><div align="left" class="style12">Select Moral Standards </div></td>
        <td height="22" bgcolor="#FFFFFF"><div align="left" class="style11">
          <select name="select4" id="select4">
		   <option selected>--SELECT--</option>
           <% for(int i=0;i<a4.size();i++)
        	  {
        	  %>
           <option><%= a4.get(i)%></option>
           
           <%}%>
          </select>
        </div></td>
      </tr>
      <tr>
       <td height="22" bgcolor="#FFFFFF"><div align="left" class="style12">Select Economic Level </div></td>
        <td height="22" bgcolor="#FFFFFF"><div align="left" class="style11">
          <select name="select5" id="select5">
		   <option selected>--SELECT--</option>
           <% for(int i=0;i<a5.size();i++)
        	  {
        	  %>
           <option><%= a5.get(i) %></option>
           
           <%}%>
          </select>
        </div></td>
      </tr>
	  <tr>
	    <td height="22" bgcolor="#FFFFFF"><span class="style12">Choose People the you Know </span></td>
	    <td height="22" bgcolor="#FFFFFF"><span class="style11">
	      <select name="select6"  id="select6" >
	        <option selected></option>
	        <option >--SELECT--</option>
	        <% for(int i=0;i<a6.size();i++)
        	  {
        	  %>
	        <option><%= a6.get(i)%></option>
	        <%}%>
          </select>
	      </span></td>
	  </tr>
	  <tr>
       <td height="25" bgcolor="#FFFFFF"><div align="left" class="style12"><font size="+1">Choose Photo:*</font></div></td>
        <td height="25" bgcolor="#FFFFFF"><div align="left" class="style11">
          <input type="file" id="photo" name="photo" style="width:100%" >
        </div></td>
      </tr>
      <tr>
        <td height="26" colspan="2" bgcolor="#FFFFFF"><span class="style11"><span class="style9"><strong>
          </span>
          <div align="center" class="style11">
            <p><strong>
              <input type="submit" name="Submit" value="Register" />
              <input type="reset" name="Submit2" value="Reset" />
            </strong></p>
            <p>&nbsp;</p>
          </div>
          <p class="style11"><strong>
            </label>
          </strong></p>
        <p class="style11">&nbsp;</p></td>
      </tr>
    </table>
  </div>
  <p align="center"><a href="index.jsp" class="style7">Home</a></p>
  <p>&nbsp;</p>
</form>
<%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
</body>
</html>