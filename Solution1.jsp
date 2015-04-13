<%@ include file="connect.jsp" %>

<html>
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	font-weight: bold;
	color: #0000FF;
}
-->
</style>
<body>
<p>&nbsp;</p>
<p>
  <%
   String qid=request.getParameter("Qid");
  String rname=(String)application.getAttribute("uname");


   

	try
	{
		
		String q3="select * from request where rto='"+qid+"'"; 
        Statement st6=connection.createStatement();
        ResultSet rs6=st6.executeQuery(q3);
	  if ( rs6.next()== true )
	   {
		  out.print("REQUEST ALREADY SENT");
	   }
	  else
	  {
	   
		String q2="select * from user where username='"+rname+"'"; 
        Statement st8=connection.createStatement();
        ResultSet rs8=st8.executeQuery(q2);
	  if ( rs8.next()== true )
	   {
		
		   String fname=rs8.getString(4);
		   String email=rs8.getString(5);
		
		   String mobile=rs8.getString(7);
		   
		   Statement st=connection.createStatement();
			String sql1 = "insert into request (rfrom,rto,fname,email,mobile,status) values('"+rname+"','"+qid+"','"+fname+"','"+email+"','"+mobile+"','Requested')";
			st.executeUpdate(sql1);
			out.print("REQUEST SENT SUCCESSFULLY");
		
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
<p align="center" class="style1"><a href="sendrequest.jsp">BACK</a>
</body>
</html>

