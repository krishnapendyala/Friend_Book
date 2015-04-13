<%@ include file="connect.jsp" %>

<html>
<style type="text/css">
<!--
.style1 {
	color: #FF6600;
	font-weight: bold;
	font-size: 24px;
}
.style2 {
	color: #FFFF00;
	font-weight: bold;
}
.style3 {color: #FF6600; font-weight: bold; font-size: 24px; font-family: "Courier New", Courier, monospace; }
-->
</style>

<body bgcolor=#FFFFFF >

<p align="center" class="style3">LIST OF ALL USER RANKS !!!</p>
<p align="center" class="style1"><img src="verifier.png" width="225" height="103"> </p>
<table width="234" border=0 align="center" cellpadding="0" cellspacing="0" bordercolor="#111111" style="border-collapse: collapse">
<tr>
  <td align="justify" bgcolor="#990000" width="180" valign="baseline" height="0"><div align="center" class="style2">Name </div></td>
  <td align="justify" bgcolor="#990000" width="180" valign="baseline" height="0"><div align="center" class="style2">Ranks</div></td>
  </tr>





<%
	
String rname=(String)application.getAttribute("uname");
	String s1;

      	try 
	{
           
           String query="select count(*) FROM request where rto='"+rname+"'"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	   while ( rs.next() )
	   {
		s1=rs.getString(1);
		
		
		
%>

<tr>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(rname);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s1);%>&nbsp;</td>
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
</tr>
</table>
</form>
</body>
</html>