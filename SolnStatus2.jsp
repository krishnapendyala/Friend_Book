<%@ include file="connect.jsp" %>

<html>
<body>
<p>&nbsp;</p>
<p>
  <%
   String who=request.getParameter("who");
   String to=request.getParameter("to");
   String from=(String)application.getAttribute("uname");



   try
	{
		
		String q3="select * from recommend where rwho='"+who+"' and rto='"+to+"'"; 
       Statement st6=connection.createStatement();
       ResultSet rs6=st6.executeQuery(q3);
	  if ( rs6.next()== true )
	   {
		  out.print("RECOMMEND ALREADY SENT");
	   }
	  else
	  {
	   
		String q2="select * from user where username='"+who+"'"; 
       Statement st8=connection.createStatement();
       ResultSet rs8=st8.executeQuery(q2);
	  if ( rs8.next()== true )
	   {
		
		   String fname=rs8.getString(4);
		   String email=rs8.getString(5);
		   String dob=rs8.getString(6);
		   String mobile=rs8.getString(7);
		   
		   Statement st=connection.createStatement();
			String sql1 = "insert into recommend values('"+from+"','"+to+"','"+who+"','"+fname+"','"+email+"','"+mobile+"')";
			st.executeUpdate(sql1);
			out.print("RECOMMEND SENT SUCCESSFULLY");
		
	   }
		
	  
		  
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
<p align="center" class="style1"><a href="addrecommend.jsp">BACK</a>

</body>
</html>

