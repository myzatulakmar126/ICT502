<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String productid=request.getParameter("productid");
String productname=request.getParameter("productname");
String productsize=request.getParameter("productsize");
int productprice=Integer.parseInt(request.getParameter("productprice"));
String productdesc=request.getParameter("productdesc");

try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE ", "taka","system");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into product(productname,productsize,productprice,productdesc)values('"+productname+"','"+productsize+"','"+productprice+"','"+productdesc+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>