<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>

<html>
<body>
<%
     

            String hab=request.getParameter("t1");
String att=request.getParameter("t2");
String tas=request.getParameter("t3");
String mor=request.getParameter("t4");
String eco=request.getParameter("t5");
           
               

		
		try
		{
			 
			int s1=0,s2=0,s3=0,s4=0,s5=0;
			

		
		
		Statement st=connection.createStatement();
		String sql1 = "insert into rules values('"+hab+"','"+att+"','"+tas+"','"+mor+"','"+eco+"')";
		st.executeUpdate(sql1);
		out.print("DETAILS ADDED SUCCESSFULLY");

		}
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  

%>

</body>
</html> 