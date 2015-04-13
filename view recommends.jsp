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
	color: #FFFFFF;
	font-weight: bold;
}
-->
</style>

<body bgcolor=#FFFFFF >

<p align="center" class="style1 style2">VIEW ALL RECOMMENDS !!!</p>
<p align="center" class="style1"><img src="EndUser.jpg" width="231" height="114"> </p>
<table width="622" border=0 align="center" cellpadding="0" cellspacing="0" bordercolor="#111111" style="border-collapse: collapse">
<tr>
  <td align="justify" bgcolor="#FF0000" width="74" valign="baseline" height="0"><div align="center" class="style3">R-From</div></td>
   <td align="justify" bgcolor="#FF0000" width="69" valign="baseline" height="0"><div align="center" class="style3">R-To</div></td>
    <td align="justify" bgcolor="#FF0000" width="82" valign="baseline" height="0"><div align="center" class="style3">R-Who</div></td>
  <td align="justify" bgcolor="#FF0000" width="113" valign="baseline" height="0"><div align="center" class="style3">Full Name</div></td>
  <td align="justify" bgcolor="#FF0000" width="111" valign="baseline" height="0"><div align="center" class="style3">E-Mail</div></td>
  <td align="justify" bgcolor="#FF0000" width="173" valign="baseline" height="0"><div align="center" class="style3">Mobile</div></td>
  </tr>





<%
	
      	
	String s1,s2,s3,s4,s5,s6;
	String rname=(String)application.getAttribute("uname");

      	try 
	{
           
           String query="select * FROM recommend where rto='"+rname+"' "; 
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
	<td align="center" bgcolor="#FFFFFF" width="69" valign="baseline" height="0"><%out.println(s2);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="82" valign="baseline" height="0"><%out.println(s3);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="113" valign="baseline" height="0"><%out.println(s4);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="111" valign="baseline" height="0"><%out.println(s5);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="173" valign="baseline" height="0"><%out.println(s6);%>&nbsp;</td>
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
	<td align="justify" bgcolor="#00FF00" width="69" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="82" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="113" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="111" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="173" valign="baseline" height="0">&nbsp;</td>
</tr>
</table>
</form>
</body>
</html>