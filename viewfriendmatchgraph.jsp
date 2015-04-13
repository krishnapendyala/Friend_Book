<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ include file="connect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	color: #0000FF;
}
.style2 {
	font-size: 24px;
	font-weight: bold;
	color: #FF6600;
}
.style5 {font-size: 18px; font-weight: bold; color: #0000FF; }
.style6 {font-family: "Courier New", Courier, monospace}
-->
</style>
</head>
<body>

<p align="center" class="style2 style6">FRIEND MATCH GRAPH !!! </p>
<p class="style1">&nbsp;</p>
<table width="1052" border="1" align="center">
  <tr>
    <td width="182"><div align="center"><span class="style5">Habits Graph</span></div></td>
    <td width="184"><div align="center"><span class="style5">Attitudes Graph</span></div></td>
    <td width="170"><div align="center"><span class="style5">Tastes Graph</span></div></td>
    <td width="222"><div align="center"><span class="style5">Moral Standards Graph</span></div></td>
    <td width="260"><div align="center"><span class="style5">Economic Level Graph</span></div></td>
  </tr>
  <tr>
    <td> <div align="center">
      <%
try
{


String query="select DISTINCT(habits) FROM rules where habits IS NOT NULL "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
           
           
while(rs.next())
{
 
    String id=rs.getString("habits");
    
    
    out.print("<input type=\"checkbox\" name=\"id\" value="+id+">"+id+"<BR>");
    
    
   
   
   String query1="select username FROM user where habits='"+id+"' "; 
   Statement st1=connection.createStatement();
   ResultSet rs1=st1.executeQuery(query1);

   while(rs1.next())
        {
       String ssa=rs1.getString(1);
      
        
         out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"checkbox\" name=\"id\" value="+ssa+" >"+ssa+"<BR>");
        }
   out.print("<br>");


}
}
catch(Exception e)
{
    out.print(" aa"+e.getMessage());
}

        %>
    </div></td>
    <td> <div align="center">
      <%
try
{


String query="select DISTINCT(attitudes) FROM rules where attitudes IS NOT NULL "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
           
           
while(rs.next())
{
 
    String id=rs.getString("attitudes");
    
    
    out.print("<input type=\"checkbox\" name=\"id\" value="+id+">"+id+"<BR>");
    
    
   
   
   String query1="select username FROM user where attitudes='"+id+"' "; 
   Statement st1=connection.createStatement();
   ResultSet rs1=st1.executeQuery(query1);

   while(rs1.next())
        {
       String ssa=rs1.getString(1);
      
        
         out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"checkbox\" name=\"id\" value="+ssa+" >"+ssa+"<BR>");
        }
   out.print("<br>");


}
}
catch(Exception e)
{
    out.print(" aa"+e.getMessage());
}

        %>
    </div></td>
    <td> <div align="center">
      <%
try
{


String query="select DISTINCT(tastes) FROM rules where tastes IS NOT NULL "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
           
           
while(rs.next())
{
 
    String id=rs.getString("tastes");
    
    
    out.print("<input type=\"checkbox\" name=\"id\" value="+id+">"+id+"<BR>");
    
    
   
   
   String query1="select username FROM user where tastes='"+id+"' "; 
   Statement st1=connection.createStatement();
   ResultSet rs1=st1.executeQuery(query1);

   while(rs1.next())
        {
       String ssa=rs1.getString(1);
      
        
         out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"checkbox\" name=\"id\" value="+ssa+" >"+ssa+"<BR>");
        }
   out.print("<br>");


}
}
catch(Exception e)
{
    out.print(" aa"+e.getMessage());
}

        %>
    </div></td>
    <td><div align="center">
      <%
try
{


String query="select DISTINCT(moral) FROM rules where moral IS NOT NULL "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
           
           
while(rs.next())
{
 
    String id=rs.getString("moral");
    
    
    out.print("<input type=\"checkbox\" name=\"id\" value="+id+">"+id+"<BR>");
    
    
   
   
   String query1="select username FROM user where moral='"+id+"' "; 
   Statement st1=connection.createStatement();
   ResultSet rs1=st1.executeQuery(query1);

   while(rs1.next())
        {
       String ssa=rs1.getString(1);
      
        
         out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"checkbox\" name=\"id\" value="+ssa+" >"+ssa+"<BR>");
        }
   out.print("<br>");


}
}
catch(Exception e)
{
    out.print(" aa"+e.getMessage());
}

        %>
    </div></td>
    <td><div align="center">
      <%
try
{


String query="select DISTINCT(economic) FROM rules where economic IS NOT NULL "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
           
           
while(rs.next())
{
 
    String id=rs.getString("economic");
    
    
    out.print("<input type=\"checkbox\" name=\"id\" value="+id+">"+id+"<BR>");
    
    
   
   
   String query1="select username FROM user where economic='"+id+"' "; 
   Statement st1=connection.createStatement();
   ResultSet rs1=st1.executeQuery(query1);

   while(rs1.next())
        {
       String ssa=rs1.getString(1);
      
        
         out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"checkbox\" name=\"id\" value="+ssa+" >"+ssa+"<BR>");
        }
   out.print("<br>");


}
}
catch(Exception e)
{
    out.print(" aa"+e.getMessage());
}

        %>
    </div></td>
  </tr>
</table>
<p class="style1">&nbsp;</p>
</body>
</html>