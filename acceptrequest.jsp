<%@ include file ="connect.jsp" %>
<%@ page import = "java.util.*"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>
<%

String uid= request.getParameter("uid");


	try
	{
		
		
	
	Statement st=connection.createStatement();
	String s1="select * from request where rto='"+uid+"' ";
	ResultSet rs1=st.executeQuery(s1);
	if(rs1.next()==true)
	{
		Statement st3=connection.createStatement();
		String s3="update request set status='Accepted' where rto='"+uid+"' ";
		st3.executeUpdate(s3);
		
		out.print("Request Accepted SuccessFully");
	}
	
	
	
	
	
	
	}catch(Exception es){out.print(es);}

%>


<body>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p align="center"><a href="viewrequest.jsp"><strong>BACK</strong></a></p>
</body>
</html>
