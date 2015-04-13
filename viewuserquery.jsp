<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>

<html>
</html>
<html>
<body>

    <h1 align="center"><u><i><font color="#0000FF" size="5"><blink></blink></font></i></u><font size="5"><strong><font color="#FF6600">LIST OF ALL USER QUERIES</font></strong> </font>!!!</h1>
    <p align="center"><img src="content.png" width="533" height="131"></p>
    <table width="879" border="0" align="center" cellspacing="1" bordercolor="#111111" style="border-collapse: collapse">
<tr>

 <td width="64" bgcolor="#3333FF" align="left"><font color="#FFFFFF"><b><i>
 Query</i></b><i><b>No</b></i></font></td>
  <td width="79" bgcolor="#3333FF" align="center"><font color="#FFFFFF"><strong><em>User</em></strong><i><b>Name</b></i></font></td>
  
  <td width="62" bgcolor="#3333FF" align="center"><b><i><font color="#FFFFFF">Groups </font></i></b></td>
  <td width="184" bgcolor="#3333FF" align="center"><font color="#FFFFFF"><b><i>About</i></b></font></td>
  <td width="196" bgcolor="#3333FF" align="center"><font color="#FFFFFF"><i><b>Description</b></i></font></td>
  <td width="59" bgcolor="#3333FF" align="center"><font color="#FFFFFF"><i><b>Status</b></i></font></td>
  <td width="156" bgcolor="#3333FF" align="center"><font color="#FFFFFF"><i><b>Answer</b></i></font></td>
  </tr>
<%
	
    
     	
	String  s1,s2,s3,s4,s5,s6,s7,s8,s9,empid;

           
           Statement st=connection.createStatement();
           
           String query="SELECT *  FROM query"; 
           ResultSet rs=st.executeQuery(query);
while ( rs.next()==true)
	   {
s1=rs.getString(1);
s2=rs.getString(2);
s3=rs.getString(3);
s4=rs.getString(4);
s5=rs.getString(5);
s6=rs.getString(6);
s7=rs.getString(7);



%>
<tr>
<td width="64" align="center">  <%=s1%></td> 
<td width="79" align="center">  <%=s2%></td>
<td width="62" align="center">  <%=s3%></td> 
<td width="184" align="center">       <%=s4%></td> 
<td width="196" align="center">          <%=s5%></td> 
<td width="59" align="center">       <%=s6%></td> 
<td width="156" align="center">      <%=s7%></td> 

<td width="54" align="center" bgcolor="#0000FF">     
<a href="Solution.jsp?Qid=<%=s1%>"><font color="#FFFFFF"><b>Solution</b></font></a></td> 
</tr>

<%	   }

          
          
%>
</table>
  
</body>
</html>
