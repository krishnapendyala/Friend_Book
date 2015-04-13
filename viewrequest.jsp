<%@ include file="connect.jsp" %>

<html>
<style type="text/css">
<!--
.style1 {
	color: #FF6600;
	font-weight: bold;
	font-size: 24px;
}
.style2 {font-family: "Courier New", Courier, monospace}
.style3 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>

<body bgcolor=#FFFFFF >

<p align="center" class="style1 style2">VIEW USERS REQUESTS !!! <br>
  <br>
  <img src="Sp.jpg" width="241" height="127"></p>
<table width="567" border=0 align="center" cellpadding="0" cellspacing="0" bordercolor="#111111" style="border-collapse: collapse">
<tr>
  <td align="justify" bgcolor="#FF9900" width="74" valign="baseline" height="0"><div align="center" class="style3">R-From</div></td>
   <td align="justify" bgcolor="#FF9900" width="74" valign="baseline" height="0"><div align="center" class="style3">R-To</div></td>
  <td align="justify" bgcolor="#FF9900" width="89" valign="baseline" height="0"><div align="center" class="style3">Full Name</div></td>
  <td align="justify" bgcolor="#FF9900" width="101" valign="baseline" height="0"><div align="center" class="style3">E-Mail</div></td>
  <td align="justify" bgcolor="#FF9900" width="141" valign="baseline" height="0"><div align="center" class="style3">Mobile</div></td>
  <td align="justify" bgcolor="#FF9900" width="42" valign="baseline" height="0"><div align="center" class="style3">Status</div></td>
  </tr>





<%
	
      	
	String s1,s2,s3,s4,s5,s6;
	String rname=(String)application.getAttribute("uname");

      	try 
	{
           
           String query="select * FROM request where rto='"+rname+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	   while ( rs.next() )
	   {
		s1=rs.getString(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		
		
		
%>

<tr>
	<td align="center" bgcolor="#FFFFFF" width="74" valign="baseline" height="0"><%out.println(s1);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="89" valign="baseline" height="0"><%out.println(s2);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="101" valign="baseline" height="0"><%out.println(s3);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="141" valign="baseline" height="0"><%out.println(s4);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="141" valign="baseline" height="0"><%out.println(s5);%>&nbsp;</td>
	
	<%
	if(s6.equals("Requested"))
	{
	
	%>
	<td bgcolor="#FFFFFF" width="42"><a href="acceptrequest.jsp?uid=<%=s2%>"><%=s6%></a></td></tr>
	<%
	}
	else
	{
	%>
		<td bgcolor="#FFFFFF" width="74"><%=s6%></a></td></tr>
	<%
	}
    %>
	
	
    
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
	<td align="justify" bgcolor="#00FF00" width="74" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="89" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="101" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="141" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="42" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="42" valign="baseline" height="0">&nbsp;</td>
</tr>
</table>
</form>
</body>
</html>