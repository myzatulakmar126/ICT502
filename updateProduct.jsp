<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "oracle.jdbc.driver.OracleDriver";%>
<%!String url = "jdbc:oracle:thin:@localhost:1521:XE";%>
<%!String user = "taka";%>
<%!String psw = "system";%>
<%
	String productid = request.getParameter("productid");
	String productname=request.getParameter("productname");
	String productsize=request.getParameter("productsize");
	int productprice=Integer.parseInt(request.getParameter("productprice"));
	String productdesc=request.getParameter("productdesc");
	if(productid != null)
	{
	Connection con = null;
	PreparedStatement ps = null;
	int personID = Integer.parseInt(productid);
	try
	{
	Class.forName(driverName);
	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE ", "taka","system");
	String sql="Update product set productid=?,productname=?,productsize=?,productprice=?,productdesc=? where productid="+productid;
	ps = con.prepareStatement(sql);
	ps.setString(1,productid);
	ps.setString(2, productname);
	ps.setString(3, productsize);
	ps.setInt(4, productprice);
	ps.setString(5, productdesc);
	int i = ps.executeUpdate();
	if(i > 0)
	{
	out.print("Record Updated Successfully");
	}
	else
	{
	out.print("There is a problem in updating Record.");
	}
	}
	catch(SQLException sql)
	{
	request.setAttribute("error", sql);
	out.println(sql);
	}
	}
%>