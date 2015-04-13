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
	font-family: "Courier New", Courier, monospace;
	color: #FF00FF;
}
-->
</style>

<body bgcolor=#FFFFFF >

<p align="center" class="style1 style2">LIST OF ALL USER RANKS !!! <br>
  <br>
  <img src="verifier.png" width="225" height="107"></p>
<table width="234" border=0 align="center" cellpadding="0" cellspacing="0" bordercolor="#111111" style="border-collapse: collapse">
<tr>
  <td align="justify" bgcolor="#CC0000" width="180" valign="baseline" height="0"><div align="center"><b>Name </b></div></td>
  <td align="justify" bgcolor="#CC0000" width="180" valign="baseline" height="0"><div align="center"><b>Ranks</b></div></td>

  </tr>





<%
	

	String s1,s2;

      	try 
	{
           
           String query="select gname,count(uname) FROM ugroup group by gname"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	   while ( rs.next() )
	   {
		s1=rs.getString(1);
		s2=rs.getString(2);
		
		
		
%>

<tr>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s1);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s2);%>&nbsp;</td>
    
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