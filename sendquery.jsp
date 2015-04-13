<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
<!--
.style3 {font-size: 18px; font-weight: bold; color: #0000FF; }
.style4 {
	color: #FF00FF;
	font-weight: bold;
	font-style: italic;
	font-size: 24px;
}
.style6 {font-size: 18px; font-weight: bold; color: #FF0000; }
.style8 {font-size: 18px; font-weight: bold; color: #FF00FF; }
-->
</style>
</head>
<body>
<p align="center" class="style4">SEND QUERY !!! </p>
<p align="center" class="style4"><img src="Mobile Server.jpg" width="267" height="107"></p>
<p>
  <%
	
      	
	

      	try 
	{
      		
      		 ArrayList a1=new ArrayList();
      		
      		 
           
           String query="select gname FROM fgroup "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
          
	   while ( rs.next() )
	   {
			a1.add(rs.getString("gname"));
		
	   }
	  
		
		
%>
</p>
<form name="form1" method="post" action="sendtoquery.jsp">
  <table width="397" height="152" border="0" align="center">
    <tr>
      <td><div align="left"><span class="style6">Select the Group </span></div></td>
      <td><label>
        <div align="left">
          <select name="s1">
            <% for(int i=0;i<a1.size();i++)
        	  {
        	  %>
            <option><%= a1.get(i)%></option>
            
            <%}%>
          </select>
          </select>
        </div>
      </label></td>
    </tr>
    <tr>
      <td><div align="left"><span class="style3">About</span></div></td>
      <td><label>
        <div align="left">
          <input type="text" name="t1">
        </div>
      </label></td>
    </tr>
    <tr>
      <td><div align="left"><span class="style8">Query</span></div></td>
      <td><div align="left">
        <textarea name="t2"></textarea>
      </div></td>
    </tr>
    <tr>
      <td><label>
          <div align="right">
            <input name="Submit" type="submit" class="style6" value="Send Query">
          </div>
        </label></td>
      <td><label>
        <div align="left">
          <input name="Submit2" type="reset" class="style8" value="Reset">
        </div>
      </label></td>
    </tr>
  </table>
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