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

           String query="select fname,email,mobile,habits,attitudes,tastes,moral,economic FROM user "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	   while ( rs.next() )
	   {
		s1=rs.getString("fname");
		s2=rs.getString("email");
		s3=rs.getString("mobile");
		s4=rs.getString("habits");
		s5=rs.getString("attitudes");
		s6=rs.getString("tastes");
		s7=rs.getString("moral");
		s8=rs.getString("economic");
		

                s9=s1+" ,"+s2+" ,"+s3+" ,"+s4+" ,"+s5+" ,"+s6+" ,"+s7+" ,"+s8;
         	al.add(s9);
	   }

	  
	
	  obj.put("Users",al);
		
   	  out.print(obj);
    	
		}

         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>



