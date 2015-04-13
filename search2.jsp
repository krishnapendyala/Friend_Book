<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp" %>


<%
      	try 
	{
      		
      		 ArrayList a1=new ArrayList();
      		 ArrayList a2=new ArrayList();
      		 ArrayList a3=new ArrayList();
      		 ArrayList a4=new ArrayList();
      		 ArrayList a5=new ArrayList();
      		
      		 
           
           String query="select habits FROM rules where habits IS NOT NULL"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
          
	   while ( rs.next() )
	   {
			a1.add(rs.getString("habits"));
		
	   }
	   String query1="select attitudes FROM rules where attitudes IS NOT NULL"; 
       Statement st1=connection.createStatement();
       ResultSet rs1=st1.executeQuery(query1);
      
   while ( rs1.next() )
   {
		a2.add(rs1.getString("attitudes"));
	
   }
   String query2="select tastes FROM rules where tastes IS NOT NULL"; 
   Statement st2=connection.createStatement();
   ResultSet rs2=st2.executeQuery(query2);
  
while ( rs2.next() )
{
	a3.add(rs2.getString("tastes"));

}
String query3="select moral FROM rules where moral IS NOT NULL"; 
Statement st3=connection.createStatement();
ResultSet rs3=st3.executeQuery(query3);

while ( rs3.next() )
{
	a4.add(rs3.getString("moral"));

}
String query4="select economic FROM rules where economic IS NOT NULL"; 
Statement st4=connection.createStatement();
ResultSet rs4=st4.executeQuery(query4);

while ( rs4.next() )
{
	a5.add(rs4.getString("economic"));

}

	

String itemname=request.getParameter("count");
String buffer="<select name='state'><option value='-1'>Select</option>";

if(itemname.equalsIgnoreCase("Habits"))
            {
            	 for(int i=0;i<a1.size();i++)
           	  {
           	  
            		 buffer=buffer+"<option value='"+a1.get(i)+"'>"+a1.get(i)+"</option>"; 
            	
              }
            } 
if(itemname.equalsIgnoreCase("Attitudes"))
{
	 for(int i=0;i<a2.size();i++)
	  {
	  
		 buffer=buffer+"<option value='"+a2.get(i)+"'>"+a2.get(i)+"</option>"; 
	
  }
} 
if(itemname.equalsIgnoreCase("Tastes"))
{
	 for(int i=0;i<a3.size();i++)
	  {
	  
		 buffer=buffer+"<option value='"+a3.get(i)+"'>"+a3.get(i)+"</option>"; 
	
  }
} 
if(itemname.equalsIgnoreCase("MoralStandards"))
{
	 for(int i=0;i<a4.size();i++)
	  {
	  
		 buffer=buffer+"<option value='"+a4.get(i)+"'>"+a4.get(i)+"</option>"; 
	
  }
} 
if(itemname.equalsIgnoreCase("EconomicLevel"))
{
	 for(int i=0;i<a5.size();i++)
	  {
	  
		 buffer=buffer+"<option value='"+a5.get(i)+"'>"+a5.get(i)+"</option>"; 
	
  }
} 




buffer=buffer+"</select>";


response.getWriter().println(buffer);
connection.close();
    }
   
    catch(Exception e)
    {
      out.println(e.getMessage());
    }
%>
