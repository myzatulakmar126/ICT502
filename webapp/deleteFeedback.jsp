<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
	String feedbackid=request.getParameter("feedbackid");
	try
	{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE ", "taka","system");
	Statement st=conn.createStatement();
	int i=st.executeUpdate("DELETE FROM feedback WHERE feedbackid="+feedbackid);
	out.println("Data Deleted Successfully!");
	}
	catch(Exception e)
	{
	System.out.print(e);
	e.printStackTrace();
	}
%>