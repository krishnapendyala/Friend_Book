<%@ include file="connect.jsp" %>

<html>
<body>
<p>&nbsp;</p>
<p>
  <%
   String qid=request.getParameter("T1");
   String soln=request.getParameter("D1");
   String ans=request.getParameter("S1");



Statement st;
ResultSet rs;

int qid1=Integer.parseInt(qid);
	try
	{
		 st=connection.createStatement();
         rs=st.executeQuery("select * from query where qno="+ qid +" ");
		if(rs.next()==true)
		 {
				st.executeUpdate("update query set status='"+ soln + "', answer='"+ ans + "' where qno="+ qid1 +" ");
		 }
else 
{

out.print("Can Not Give Solution");
}

	}
	catch(Exception e)
	{
		System.out.print(e);
	}
	     response.sendRedirect("viewuserquery.jsp");
%>



</body>
</html>

