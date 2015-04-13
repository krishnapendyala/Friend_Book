<%@ include file="connect.jsp" %>
<%@page import="org.json.simple.JSONObject"%>
 <%@page contentType="text/html; charset=UTF-8"%>

<%

      

	JSONObject obj=new JSONObject();

      	
	String  s11=null,s2=null, s3=null;
	String s1;
	int c=0;

      	try 
	{




		ArrayList al = new ArrayList();

          
           String query="select gname,count(uname) FROM ugroup group by gname"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	  
	   while ( rs.next() )
	   {
		s1=rs.getString(1);
		s2=rs.getString(2);		
            
                s3=s1+" ,"+s2;
         	al.add(s3);
	   }

	  
	
	  obj.put("UsersRanks",al);
		
   	  out.print(obj);
    	
		}

         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>



