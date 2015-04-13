<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>

<html>
<body>
<%
     
	  String v1=request.getParameter("email");
          String v2=request.getParameter("user");
          String v3=request.getParameter("pass");
      
	  

            

	
		try
		{
			 
			int s1=0,s2=0,s3=0,s4=0,s5=0;
			

		PreparedStatement pst2=connection.prepareStatement("insert into login values(?,?,?)");

		pst2.setString(1,v2);
           pst2.setString(2,v3);
           pst2.setString(3,v1);
           
   
		s2=pst2.executeUpdate();
		Statement st=connection.createStatement();


		

		}
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  

%>

</body>
</html>