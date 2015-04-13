<%@ include file="connect.jsp" %>

<html>
<body>
<p>&nbsp;</p>
<p>
  <%
   String gr=request.getParameter("g1");
   String user=request.getParameter("u1");
  



   try
	{
		
		String q3="select * from ugroup where gname='"+gr+"' and uname='"+user+"'"; 
       Statement st6=connection.createStatement();
       ResultSet rs6=st6.executeQuery(q3);
	  if ( rs6.next()== true )
	   {
		  out.print("USER ALREADY EXISTS IN GROUP");
	   }
	  else
	  {
	   
		
		   
		   Statement st=connection.createStatement();
			String sql1 = "insert into ugroup values('"+gr+"','"+user+"')";
			st.executeUpdate(sql1);
			out.print("USER ADDED SUCCESSFULLY");
		
	  
		
	  
		  
	  }
	}
	catch(Exception e)
	{
		System.out.print(e);
	}
	   //  response.sendRedirect("sendrequest.jsp");
%>
<p>
<p>
<p align="center" class="style1"><a href="formgroups.jsp">BACK</a>

</body>
</html>

