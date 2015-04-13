<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%@page import="org.json.simple.JSONObject"%>
 <%@page contentType="text/html; charset=UTF-8"%>

<%
    
        String username=request.getParameter("user");      

        JSONObject obj=new JSONObject();

int res=0;
	    
try
{
	  
	   String sql="SELECT * FROM madmin where aname='"+username+"'  ";
         Statement stmt = connection.createStatement();
	   ResultSet rs =stmt.executeQuery(sql);
		
	   if(rs.next()==true)
	    {

          // out.println("Success");

 res=1;

           }
	    else
	    {
 res=0;

         //  out.println("failure");
          }

 
    obj.put("status",res);
    
    out.print(obj);
    out.flush();

}

catch(Exception e)
{out.print(e);}
%>

