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
 	   String query="select * FROM rules "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
          
	   while ( rs.next() )
	   {
		s1=rs.getString(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);

                s6=s1+" ,"+s2+" ,"+s3+" ,"+s4+" ,"+s5;
         	al.add(s6);
	   }

	  
	
	  obj.put("RBase",al);
		
   	  out.print(obj);
    	
		}

         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>



