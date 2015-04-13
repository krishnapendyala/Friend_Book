<%@ include file="connect.jsp" %>
<%@page import="org.json.simple.JSONObject"%>
 <%@page contentType="text/html; charset=UTF-8"%>

<%

      

	JSONObject obj=new JSONObject();

      	
	String  s11=null,s2=null, s3=null,s4=null,s5=null,s6=null,s7=null,s8=null,s9=null;
	String s1;
	int c=0;

      	try 
	{




		ArrayList al = new ArrayList();

           String query="select * FROM fgroup "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);

	   while ( rs.next() )
	   {
		c=rs.getInt("gno");
		s2=rs.getString("gname");
		

                s3=c+" ,"+s2;
         	al.add(s3);
	   }

	  
	
	  obj.put("groups",al);
		
   	  out.print(obj);
    	
		}

         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>



