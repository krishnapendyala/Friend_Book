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

<p align="center" class="style1">LIST OF ALL USER FEEDBACKS </p>
<table width="540" border=0 align="center" cellpadding="0" cellspacing="0" bordercolor="#111111" style="border-collapse: collapse">
<tr>
  <td align="justify" bgcolor="#00FF00" width="86" valign="baseline" height="0"><div align="center"><b>F-NO</b></div></td>
  <td align="justify" bgcolor="#00FF00" width="135" valign="baseline" height="0"><div align="center"><b>About</b></div></td>
  <td align="justify" bgcolor="#00FF00" width="280" valign="baseline" height="0"><div align="center"><b>Description</b></div></td>
  

  </tr>





<%
	
      	
	String s1,s2,s3;

      	try 
	{
           
           String query="select * FROM feedback"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	   while ( rs.next() )
	   {
		s1=rs.getString(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		
		
		
%>

<tr>
	<td align="center" bgcolor="#FFFFFF" width="86" valign="baseline" height="0"><%out.println(s1);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="135" valign="baseline" height="0"><%out.println(s2);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="280" valign="baseline" height="0"><%out.println(s3);%>&nbsp;</td>
    
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
	<td align="justify" bgcolor="#00FF00" width="86" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="135" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="280" valign="baseline" height="0">&nbsp;</td>
   
</tr>


</table>
</form>
</body>
</html>