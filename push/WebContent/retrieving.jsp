<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/test";
String uname="root";
String pword="";

Class.forName(driver);
Connection conn =DriverManager.getConnection(url,uname,pword);
Statement stmt=conn.createStatement();
ResultSet rset=stmt.executeQuery("select * from pushkal");
ResultSetMetaData rsm=rset.getMetaData();
%>
<table border="1">
<%
out.print("<tr><th>"+rsm.getColumnName(1)+"<th>"+rsm.getColumnName(2)+"<th>"
	       +rsm.getColumnName(3));
while(rset.next())
{
	
	out.print("<tr><td>"+rset.getString(1));
	out.print("<td>"+rset.getString(2));
	out.print("<td>"+rset.getString(3));
	
}
%>
</table>

</body>
</html>