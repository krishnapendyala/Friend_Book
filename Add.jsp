<%@ page language="java" contentType="text/html; charset=iso-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Insert title here</title>
<style type="text/css">
<!--
body,td,th {
	color: #FF0000;
}
body {
	background-color: #FFFFFF;
}
.style1 {
	font-size: 24px;
	font-weight: bold;
}
.style5 {color: #FF6600}
.style6 {font-family: "Courier New", Courier, monospace}
.style7 {color: #0000FF; font-weight: bold; font-size: 18px; font-family: "Courier New", Courier, monospace; }
.style9 {color: #FF00FF; font-weight: bold; font-size: 18px; font-family: "Courier New", Courier, monospace; }
.style11 {color: #FF3300; font-weight: bold; font-size: 18px; font-family: "Courier New", Courier, monospace; }
-->
</style></head>
<body>
<form name="form1" method="post" action="add1.jsp">
  <p align="center" class="style1 style5 style6">ADDING DETAILS !!! </p>
  <p align="center" class="style1 style5 style6">&nbsp;</p>
  <table width="499" border="0" align="center">
    <tr>
      <td width="298"><span class="style7">Enter the Habits </span></td>
      <td width="191"><label>
        <input type="text" name="t1">
      </label></td>
    </tr>
    <tr>
      <td><span class="style9">Enter the Attitudes </span></td>
      <td><input type="text" name="t2"></td>
    </tr>
    <tr>
      <td><span class="style7">Enter the Tastes </span></td>
      <td><input type="text" name="t3"></td>
    </tr>
    <tr>
      <td><span class="style11">Enter the Moral Standards </span></td>
      <td><input type="text" name="t4"></td>
    </tr>
    <tr>
      <td><span class="style7">Enter the Economic Level </span></td>
      <td><input type="text" name="t5"></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="right">
        <input name="Submit" type="submit" class="style11" value="Submit">
      </div></td>
      <td><input name="Submit2" type="reset" class="style9" value="Reset"></td>
    </tr>
  </table>
</form>
</body>
</html>