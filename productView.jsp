<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
		<%
		String productid = request.getParameter("productid");
		String driver = "oracle.jdbc.driver.OracleDriver";
		String connectionUrl = "jdbc:oracle:thin:@localhost:1521:XE";
		String database = "taka";
		String userid = "taka";
		String password = "system";
		try {
		Class.forName(driver);
		} catch (ClassNotFoundException e) {
		e.printStackTrace();
		}
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		%>
		<%
		try{
		connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE ", "taka","system");
		statement=connection.createStatement();
		String sql ="select * from product where productid="+productid;
		resultSet = statement.executeQuery(sql);
		while(resultSet.next()){
		%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Product View</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css/styleView.css">
	</head>

	<body>

		<div class="wrapper" style="background-image: url('images/bg-registration-form-1.jpg');">
			<div class="inner">
				<div class="image-holder">
					<img src="images/registration-form-1.jpg" alt="#">
				</div>
				
				<div class="div1">
					<h3>Product Details</h3>
					<div class="form-wrapper">
						<h4>Name :</h4>
						<h4><%=resultSet.getString("productname")%></h4>
						<br><br>
					</div>

					<div class="form-wrapper">
						<h4>Size :</h4>
						<h4><%=resultSet.getString("productsize") %></h4>
						<br><br>
					</div>

					<div class="form-wrapper">
						<h4>Price : RM </h4>
						<h4><%=resultSet.getInt("productprice") %></h4>
						<br><br>
					</div>

					<div class="form-wrapper">
						<h4>Description :</h4>
						<h4><%=resultSet.getString("productdesc") %></h4>
						<br><br>
					</div>

					<a href="productTable.jsp" style="color: aliceblue;"><button>Back<i class="zmdi zmdi-arrow-right" ></i></button></a>
				</div>
				
				<%
				}
				connection.close();
				} catch (Exception e) {
				e.printStackTrace();
				}
				%>
			</div>
		</div>
		
	</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>