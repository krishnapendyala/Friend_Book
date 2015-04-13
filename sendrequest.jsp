<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script language="javascript" type="text/javascript">
var xmlHttp;
function showState(str){
if (typeof XMLHttpRequest != "undefined"){
xmlHttp= new XMLHttpRequest();
}
else if (window.ActiveXObject){
xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
}
if (xmlHttp==null){
alert ("Browser does not support XMLHTTP Request")
return
}
var url= "search2.jsp";
url += "?count=" +str;
xmlHttp.onreadystatechange = stateChange;
xmlHttp.open("GET", url, true);
xmlHttp.send(null);
}
function stateChange(){
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){
document.getElementById("item").innerHTML=xmlHttp.responseText
}
}
</script>
<style type="text/css">
<!--
.style3 {font-size: 18px; font-weight: bold; color: #0000FF; }
.style4 {
	color: #0000FF;
	font-weight: bold;
}
.style5 {
	color: #FF0000;
	font-weight: bold;
}
.style7 {font-size: 18px; font-weight: bold; color: #FF00FF; }
-->
</style>
</head>
<body>
<p align="center" class="style5">SEND REQUEST !!! </p>
<p>&nbsp;</p>
<form name="form1" method="post" action="sendrequest.jsp">
  <table width="419" border="0" align="center">
    <tr>
      <td><span class="style3">Select the Category </span></td>
      <td><label>
        <select name="select" onChange="showState(this.value)">
        <option>Select</option>
		<option>Habits</option>
            <option>Attitudes</option>
            <option>Tastes</option>
            <option>MoralStandards</option>
            <option>EconomicLevel</option>
        </select>
      </label></td>
    </tr>
    <tr>
      <td><span class="style7">Select the Sub Category </span></td>
      <td><label><br>
        <div id='item'>
<select name='item' >
<option value='-1'></option>
</select>
</div>
      </label></td>
    </tr>
    <tr>
      <td><label>
        <br>
        <div align="right">
          <input name="Submit" type="submit" class="style7" value="Search">
        </div>
      </label></td>
      <td><div align="left"></div></td>
    </tr>
  </table>
  <p>&nbsp;</p>
</form>
</body>
</html>




	<table width="1090" border=1 align="center" cellpadding="0" cellspacing="0" bordercolor="#111111" style="border-collapse: collapse">
<tr>
<td align="justify" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><div align="center" class="style4">User Image</div></td>
<td align="justify" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><div align="center" class="style4">Username</div></td>
<td align="justify" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><div align="center" class="style4">Full Name</div></td>
<td align="justify" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><div align="center" class="style4">E-Mail</div></td>
 <td align="justify" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><div align="center" class="style4">DOB</div></td>
 <td align="justify" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><div align="center" class="style4">Mobile</div></td>
 <td align="justify" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><div align="center" class="style4">Habits</div></td>
 <td align="justify" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><div align="center" class="style4">Attitudes</div></td>
 <td align="justify" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><div align="center" class="style4">Tastes</div></td>
 <td align="justify" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><div align="center" class="style4">Moral Standards</div></td>
 <td align="justify" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><div align="center" class="style4">Economic Level</div></td>
 <td align="justify" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><div align="center" class="style4">People Known</div></td>
</tr>



<%
	
	String one= request.getParameter("select");	
	String q1= request.getParameter("state");	
	String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
	int i=0;
      	try 
	{
      		
      		 if(one.equalsIgnoreCase("Habits"))
             {
      			String q2="select * from user where habits='"+q1+"'"; 
                Statement st8=connection.createStatement();
                ResultSet rs8=st8.executeQuery(q2);
     	   while ( rs8.next() )
     	   {
     		  i=rs8.getInt(1);
   			s2=rs8.getString(2);
   			s3=rs8.getString(3);
   			s4=rs8.getString(4);
   			s5=rs8.getString(5);
   			s6=rs8.getString(6);
   			s7=rs8.getString(7);
   			s8=rs8.getString(8);
   			s9=rs8.getString(9);
   			s10=rs8.getString(10);
   			s11=rs8.getString(11);
   			s12=rs8.getString(12);
   			s13=rs8.getString(13);
   			
   			
   			
   			
   	%>

   	
   
   	<tr>
   		 <td><div align="center">
   	      <input  name="image" type="image" src="images.jsp?imgid=<%=i%>" width="100" height="100" alt="Submit">
   	    </</div></td>
   		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s2);%>&nbsp;</td>
   		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s4);%>&nbsp;</td>
   		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s5);%>&nbsp;</td>
   		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s6);%>&nbsp;</td>
   		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s7);%>&nbsp;</td>
   		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s8);%>&nbsp;</td>
   		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s9);%>&nbsp;</td>
   		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s10);%>&nbsp;</td>
   		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s11);%>&nbsp;</td>
   		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s12);%>&nbsp;</td>
   		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s13);%>&nbsp;</td>
   	<td width="280" align="justify" bgcolor="#FFFFFF">     
 <a href="Solution1.jsp?Qid=<%=s2%>" class="style5">SendRequest</a></td> 
   	</tr>


   	<%
     	   }
     	  
             }
            if(one.equalsIgnoreCase("Attitudes"))
             {
            	String q2="select * from user where attitudes='"+q1+"'"; 
                Statement st8=connection.createStatement();
                ResultSet rs8=st8.executeQuery(q2);
     	   while ( rs8.next() )
     	   {
     		  i=rs8.getInt(1);
     			s2=rs8.getString(2);
     			s3=rs8.getString(3);
     			s4=rs8.getString(4);
     			s5=rs8.getString(5);
     			s6=rs8.getString(6);
     			s7=rs8.getString(7);
     			s8=rs8.getString(8);
     			s9=rs8.getString(9);
     			s10=rs8.getString(10);
     			s11=rs8.getString(11);
     			s12=rs8.getString(12);
     			s13=rs8.getString(13);
     			
     			
     			
     			
     	%>

     	
     	
     	<tr>
     		 <td><div align="center">
     	      <input  name="image" type="image" src="images.jsp?imgid=<%=i%>" width="100" height="100" alt="Submit">
     	    </</div></td>
     		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s2);%>&nbsp;</td>
     		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s4);%>&nbsp;</td>
     		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s5);%>&nbsp;</td>
     		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s6);%>&nbsp;</td>
     		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s7);%>&nbsp;</td>
     		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s8);%>&nbsp;</td>
     		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s9);%>&nbsp;</td>
     		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s10);%>&nbsp;</td>
     		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s11);%>&nbsp;</td>
     		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s12);%>&nbsp;</td>
     		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s13);%>&nbsp;</td>
     		<td width="280" align="justify" bgcolor="#FFFFFF">     
 <a href="Solution1.jsp?Qid=<%=s2%>" class="style5">SendRequest</a></td> 
     	</tr>


     	<%
             } 
             }
              if(one.equalsIgnoreCase("Tastes"))
             {
            	  String q2="select * from user where tastes='"+q1+"'"; 
                  Statement st8=connection.createStatement();
                  ResultSet rs8=st8.executeQuery(q2);
       	   while ( rs8.next() )
       	   {
       		 i=rs8.getInt(1);
    			s2=rs8.getString(2);
    			s3=rs8.getString(3);
    			s4=rs8.getString(4);
    			s5=rs8.getString(5);
    			s6=rs8.getString(6);
    			s7=rs8.getString(7);
    			s8=rs8.getString(8);
    			s9=rs8.getString(9);
    			s10=rs8.getString(10);
    			s11=rs8.getString(11);
    			s12=rs8.getString(12);
    			s13=rs8.getString(13);
    			
    			
    			
    			
    	%>

    	
    	
    	<tr>
    		 <td><div align="center">
    	      <input  name="image" type="image" src="images.jsp?imgid=<%=i%>" width="100" height="100" alt="Submit">
    	    </</div></td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s2);%>&nbsp;</td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s4);%>&nbsp;</td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s5);%>&nbsp;</td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s6);%>&nbsp;</td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s7);%>&nbsp;</td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s8);%>&nbsp;</td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s9);%>&nbsp;</td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s10);%>&nbsp;</td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s11);%>&nbsp;</td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s12);%>&nbsp;</td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s13);%>&nbsp;</td>
    		<td width="280" align="justify" bgcolor="#FFFFFF">     
 <a href="Solution1.jsp?Qid=<%=s2%>" class="style5">SendRequest</a></td> 
    	</tr>


    	<%
             } 
             }
              if(one.equalsIgnoreCase("MoralStandards"))
             {
            	  String q2="select * from user where moral='"+q1+"'"; 
                  Statement st8=connection.createStatement();
                  ResultSet rs8=st8.executeQuery(q2);
       	   while ( rs8.next() )
       	   {
       		 i=rs8.getInt(1);
    			s2=rs8.getString(2);
    			s3=rs8.getString(3);
    			s4=rs8.getString(4);
    			s5=rs8.getString(5);
    			s6=rs8.getString(6);
    			s7=rs8.getString(7);
    			s8=rs8.getString(8);
    			s9=rs8.getString(9);
    			s10=rs8.getString(10);
    			s11=rs8.getString(11);
    			s12=rs8.getString(12);
    			s13=rs8.getString(13);
    			
    			
    			
    			
    	%>

    	
    	
    	<tr>
    		 <td><div align="center">
    	      <input  name="image" type="image" src="images.jsp?imgid=<%=i%>" width="100" height="100" alt="Submit">
    	    </</div></td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s2);%>&nbsp;</td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s4);%>&nbsp;</td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s5);%>&nbsp;</td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s6);%>&nbsp;</td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s7);%>&nbsp;</td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s8);%>&nbsp;</td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s9);%>&nbsp;</td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s10);%>&nbsp;</td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s11);%>&nbsp;</td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s12);%>&nbsp;</td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s13);%>&nbsp;</td>
    		<td width="280" align="justify" bgcolor="#FFFFFF">     
 <a href="Solution1.jsp?Qid=<%=s2%>" class="style5">SendRequest</a></td> 
    	</tr>


    	<%
             }
             }
              if(one.equalsIgnoreCase("EconomicLevel"))
             {
            	  String q2="select * from user where economic='"+q1+"'"; 
                  Statement st8=connection.createStatement();
                  ResultSet rs8=st8.executeQuery(q2);
       	   while ( rs8.next() )
       	   {
       		 i=rs8.getInt(1);
    			s2=rs8.getString(2);
    			s3=rs8.getString(3);
    			s4=rs8.getString(4);
    			s5=rs8.getString(5);
    			s6=rs8.getString(6);
    			s7=rs8.getString(7);
    			s8=rs8.getString(8);
    			s9=rs8.getString(9);
    			s10=rs8.getString(10);
    			s11=rs8.getString(11);
    			s12=rs8.getString(12);
    			s13=rs8.getString(13);
    			
    			
    			
    			
    	%>

    	
    	
    	<tr>
    		 <td><div align="center">
    	      <input  name="image" type="image" src="images.jsp?imgid=<%=i%>" width="100" height="100" alt="Submit">
    	    </</div></td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s2);%>&nbsp;</td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s4);%>&nbsp;</td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s5);%>&nbsp;</td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s6);%>&nbsp;</td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s7);%>&nbsp;</td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s8);%>&nbsp;</td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s9);%>&nbsp;</td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s10);%>&nbsp;</td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s11);%>&nbsp;</td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s12);%>&nbsp;</td>
    		<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s13);%>&nbsp;</td>
    		<td width="280" align="justify" bgcolor="#FFFFFF">     
 <a href="Solution1.jsp?Qid=<%=s2%>" class="style5">SendRequest</a></td> 
    	</tr>


    	<%
             }
             }
         
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>


</table>


