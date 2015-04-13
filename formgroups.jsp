<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
<style type="text/css">
<!--
.style3 {
	color: #FF00FF;
	font-family: "Courier New", Courier, monospace;
	font-size: 24px;
	font-weight: bold;
}
.style6 {
	font-family: "Courier New", Courier, monospace;
	color: #0000FF;
	font-weight: bold;
}
-->
</style>
<p align="center" class="style3">FORM GROUPS !!! </p>
<p align="center"><img src="Groups.jpg" width="187" height="127" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
<%
	
      	
	

      	try 
	{
      		
      		 ArrayList a1=new ArrayList();
      		ArrayList a2=new ArrayList();
      		 
      		 
           
           String query="select username FROM user "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
          
	   while ( rs.next() )
	   {
			a1.add(rs.getString("username"));
		
	   }
	   String query1="select gname FROM fgroup "; 
       Statement st1=connection.createStatement();
       ResultSet rs1=st1.executeQuery(query1);
      
   while ( rs1.next() )
   {
		a2.add(rs1.getString("gname"));
	
   }
	  
		
		
%>
<form method="POST" action="SolnStatus3.jsp">
    <center>
    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="47%" id="AutoNumber1">
      <tr>
        <td width="66%"><span class="style6">Select the Group </span></td>
        <td width="34%"><label>
          <select name="g1">
          <% for(int i=0;i<a2.size();i++)
        	  {
        	  %>
           <option><%= a2.get(i)%></option>
           
           <%}%>
          </select>
        </label></td>
      </tr>
      <tr>
        <td width="66%"><span class="style6"><br />
        Select the User to form the Group </span> </td>
        <td width="34%"><select size="1" name="u1">
       <% for(int i=0;i<a1.size();i++)
        	  {
        	  %>
           <option><%= a1.get(i)%></option>
           
           <%}%>
        </select></td>
      </tr>
      
      <tr>
        <td width="66%"><p>&nbsp;
          </p>
          <p align="center">
            <input name="B1" type="submit" class="style3" value="Add Group" />
          </p></td>
        <td width="34%">&nbsp;</td>
      </tr>
    </table>
    </center>
  </div>
</form>
<%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
<p>&nbsp;</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
<p>&nbsp;</p>