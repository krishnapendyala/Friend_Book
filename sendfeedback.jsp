<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
<!--
.style4 {
	color: #FF00FF;
	font-weight: bold;
	font-style: italic;
	font-size: 24px;
	font-family: "Courier New", Courier, monospace;
}
.style6 {font-size: 18px; font-weight: bold; color: #FF0000; font-family: "Courier New", Courier, monospace; }
.style8 {font-size: 18px; font-weight: bold; color: #FF00FF; font-family: "Courier New", Courier, monospace; }
-->
</style>
</head>
<body>

<p align="center" class="style4">SEND FEEDBACK !!! </p>
<p align="center"><img src="TM1.jpg" width="208" height="208"></p>
<form name="form1" method="post" action="sendtofeedback.jsp">
  <table width="397" height="152" border="0" align="center">
    
    <tr>
      <td><div align="left"><span class="style8">About</span></div></td>
      <td><label>
        <div align="left">
          <input type="text" name="t1">
        </div>
      </label></td>
    </tr>
    <tr>
      <td><div align="left"><span class="style6">FeedBack</span></div></td>
      <td><div align="left">
        <textarea name="t2"></textarea>
      </div></td>
    </tr>
    <tr>
      <td><label>
          <div align="right">
            <input name="Submit" type="submit" class="style8" value="Send Feedback">
          </div>
        </label></td>
      <td><label>
        <div align="left">
          <input name="Submit2" type="reset" class="style6" value="Reset">
        </div>
      </label></td>
    </tr>
  </table>
</form>

</body>
</html>