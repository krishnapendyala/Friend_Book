<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>

<html>
<body>
<%
     

            String groups=request.getParameter("t1");
           
               

		
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
		String sql1 = "insert into fgroup (gname) values('"+groups+"')";
		st.executeUpdate(sql1);
		out.print("GROUPS ADDED SUCCESSFULLY");

		}
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  

%>

</body>
</html> 