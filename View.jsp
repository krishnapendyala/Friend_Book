<%@ include file="connect.jsp" %>

<html>
<style type="text/css">
<!--
.style1 {
	color: #FF6600;
	font-weight: bold;
	font-size: 24px;
}
-->
</style>

<body bgcolor=#FFFFFF >

<p align="center" class="style1">ALL DETAILS </p>
<table width="632" border=0 align="center" cellpadding="0" cellspacing="0" bordercolor="#111111" style="border-collapse: collapse">
<tr>
  <td align="justify" bgcolor="#00FF00" width="180" valign="baseline" height="0"><div align="center"><b>Habits</b></div></td>
  <td align="justify" bgcolor="#00FF00" width="180" valign="baseline" height="0"><div align="center"><b>Attitudes</b></div></td>
  <td align="justify" bgcolor="#00FF00" width="180" valign="baseline" height="0"><div align="center"><b>Tastes</b></div></td>
  <td align="justify" bgcolor="#00FF00" width="180" valign="baseline" height="0"><div align="center"><b>Moral Standards</b></div></td>
  <td align="justify" bgcolor="#00FF00" width="180" valign="baseline" height="0"><div align="center"><b>Economic Level</b></div></td>
  

  </tr>





<%
	
      	
	String s1,s2,s3,s4,s5;

      	try 
	{
           
           String query="select * FROM rules "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	   while ( rs.next() )
	   {
		s1=rs.getString(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		
		
		
%>

<tr>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s1);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s2);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s3);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s4);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s5);%>&nbsp;</td>
    
</tr>


<%

	   }

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>

<tr>
	<td align="justify" bgcolor="#00FF00" width="180" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="180" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="180" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="180" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="180" valign="baseline" height="0">&nbsp;</td>
   
</tr>


</table>
</form>
</body>
</html>