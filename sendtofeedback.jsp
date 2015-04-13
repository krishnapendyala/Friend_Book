<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>

<html>
<body>
<%
     

          
			String about=request.getParameter("t1");
			String descri=request.getParameter("t2");
           
               

		
		try
		{
			 
			int s1=0,s2=0,s3=0,s4=0,s5=0;
			

		/* PreparedStatement pst2=connection.prepareStatement("insert into IntArea values(?,?,?)");

		pst2.setString(1,aoi);
           pst2.setString(2,wname);

           pst2.setString(3,url);
		
		s2=pst2.executeUpdate();

		out.print("QUERY DETALS ADDED SUCCESSFULLY");*/
		
		Statement st=connection.createStatement();
		String sql1 = "insert into feedback (about,description) values('"+about+"','"+descri+"')";
		st.executeUpdate(sql1);
		out.print("FEEDBACK SEND SUCCESSFULLY");

		}
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  

%>

</body>
</html> 