<%@ include file="connect.jsp" %>

<html>
<style type="text/css">
<!--
.style1 {
	color: #FF6600;
	font-weight: bold;
	font-size: 24px;
}
.style8 {color: #FF00FF; font-weight: bold; font-family: "Courier New", Courier, monospace; }
-->
</style>

<body bgcolor=#FFFFFF >

<p align="center" class="style1">LIST OF ALL USERS </p>
<table width="1080" border=0 align="center" cellpadding="0" cellspacing="0" bordercolor="#111111" style="border-collapse: collapse">
<tr>
  <td width="180" height="0" align="justify" valign="baseline" bordercolor="#00FF00" bgcolor="#00FF00"><div align="center" class="style8">User Image</div></td>
  <td width="180" height="0" align="justify" valign="middle" bordercolor="#00FF00" bgcolor="#00FF00"><div align="center" class="style8">Username</div></td>
  <td width="180" height="0" align="justify" valign="middle" bordercolor="#00FF00" bgcolor="#00FF00"><div align="center" class="style8">Full Name</div></td>
  <td width="180" height="0" align="justify" valign="middle" bordercolor="#00FF00" bgcolor="#00FF00"><div align="center" class="style8">E-Mail</div></td>
   <td width="180" height="0" align="justify" valign="middle" bordercolor="#00FF00" bgcolor="#00FF00"><div align="center" class="style8">DOB</div></td>
   <td width="180" height="0" align="justify" valign="middle" bordercolor="#00FF00" bgcolor="#00FF00"><div align="center" class="style8">Mobile</div></td>
   <td width="180" height="0" align="justify" valign="middle" bordercolor="#00FF00" bgcolor="#00FF00"><div align="center" class="style8">Habits</div></td>
   <td width="180" height="0" align="justify" valign="middle" bordercolor="#00FF00" bgcolor="#00FF00"><div align="center" class="style8">Attitudes</div></td>
   <td width="180" height="0" align="justify" valign="middle" bordercolor="#00FF00" bgcolor="#00FF00"><div align="center" class="style8">Tastes</div></td>
   <td width="180" height="0" align="justify" valign="middle" bordercolor="#00FF00" bgcolor="#00FF00"><div align="center" class="style8">Moral Stdards</div></td>
   <td width="180" height="0" align="justify" valign="middle" bordercolor="#00FF00" bgcolor="#00FF00"><div align="center" class="style8">Economic Level</div></td>
   <td width="180" height="0" align="justify" valign="middle" bordercolor="#00FF00" bgcolor="#00FF00"><div align="center" class="style8">People Known</div></td>
  </tr>





<%
	
      	
	String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
int i=0;

      	try 
	{
           
           String query="select * from user"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	   while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		s7=rs.getString(7);
		s8=rs.getString(8);
		s9=rs.getString(9);
		s10=rs.getString(10);
		s11=rs.getString(11);
		s12=rs.getString(12);
		s13=rs.getString(13);
		
		
		
		
%>

<tr>
	 <td><div align="center">
      <input  name="image" type="image" src="images.jsp?imgid=<%=i%>" width="100" height="100" alt="Submit">
    </</div></td>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="middle" height="0"><div align="center">
	    <%out.println(s2);%>
    &nbsp;</div></td>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="middle" height="0"><div align="center">
	    <%out.println(s4);%>
    &nbsp;</div></td>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="middle" height="0"><div align="center">
	    <%out.println(s5);%>
    &nbsp;</div></td>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="middle" height="0"><div align="center">
	    <%out.println(s6);%>
    &nbsp;</div></td>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="middle" height="0"><div align="center">
	    <%out.println(s7);%>
    &nbsp;</div></td>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="middle" height="0"><div align="center">
	    <%out.println(s8);%>
    &nbsp;</div></td>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="middle" height="0"><div align="center">
	    <%out.println(s9);%>
    &nbsp;</div></td>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="middle" height="0"><div align="center">
	    <%out.println(s10);%>
    &nbsp;</div></td>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="middle" height="0"><div align="center">
	    <%out.println(s11);%>
    &nbsp;</div></td>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="middle" height="0"><div align="center">
	    <%out.println(s12);%>
    &nbsp;</div></td>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="middle" height="0"><div align="center">
	    <%out.println(s13);%>
    &nbsp;</div></td>
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
</table>
</form>
</body>
</html>