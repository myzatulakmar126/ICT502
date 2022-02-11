<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta charset='utf-8'>
	<meta name='viewport' content='width=device-width, initial-scale=1'>
	<title>Tie Dye Payment</title>
	<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css' rel='stylesheet'>
	<link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
	<script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
	<link rel="stylesheet" href="css/payment.css">
</head>
<body>

	<div class="col-md-6"> <h2>Payment Method</h2>
            <div class="card">
                <div class="accordion" id="accordionExample">
                    <div class="card">
                        <div class="card-header p-0" id="headingTwo">
                            <h2 class="mb-0"> <button class="btn btn-light btn-block text-left collapsed p-3 rounded-0 border-bottom-custom" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    <div class="d-flex align-items-center justify-content-between"> <span>Online Banking</span> <img src="img/fpx.png" width="30"> </div>
                                </button> </h2>
                        </div>
                        <%
                        		double totprice = Double.parseDouble(request.getParameter("totalPrice"));
                        		Connection con = null;
                        		Statement stmt = null;
                        		ResultSet rs = null;
                        		
                        	try{        		
                        		Class.forName("oracle.jdbc.driver.OracleDriver");
					con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE ", "taka","system");
                        	}catch(ClassNotFoundException e){
                        		e.printStackTrace();
                        	}
                        	
                        	try{
					Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE ", "taka","system");                        		
					stmt = con.createStatement();
                        		String sql = "select totalPrice from cart";
                        		rs = stmt.executeQuery(sql);	
                        	
                        %>
                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                            <div class="card-body"> 
                            <form action="#" method="post">
	                            <input type="radio" id="cimb" name="online" value="cimb">
	                            &nbsp;<img src="img/cimb.png" class="bank" width="30"><label for="cimb">&nbsp;&nbsp;CIMB Clicks</label><br><br>
	                            <input type="radio" id="maybank" name="online" value="maybank">
	                            &nbsp;<img src="img/maybank2u.png" class="bank" width="30"><label for="maybank">&nbsp;&nbsp;Maybank2u</label><br><br>
	                            <input type="radio" id="publics" name="online" value="publics">
	                            &nbsp;<img src="img/pb.jpg" class="bank" width="30"><label for="public">&nbsp;&nbsp;Public Bank</label><br>
                            </form>
                            <br><br><button class="button" onclick="select()">SELECT</button>
                                    <script>
                                    	function select(){
                                    		
                                    		var cimb = document.getElementById("cimb");
                                    		var maybank = document.getElementById("maybank");
                                    		var publics = document.getElementById("publics");
                                    		
                                    		if(cimb.checked==true){
                                    			document.location.href = "https://www.cimbclicks.com.my/clicks/#/";
                                    		}
                                    		else if(maybank.checked==true){
                                    			document.location.href = "https://www.maybank2u.com.my/home/m2u/common/login.do";
                                    		}
                                    		else if(publics.checked==true){
                                    			document.location.href = "https://www2.pbebank.com/myIBK/apppbb/servlet/BxxxServlet?RDOName=BxxxAuth&MethodName=login";
                                    		}
                                    		else{
                                    			alert("No Online Banking selected");
                                    		}
                                    	}
                                    </script>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header p-0">
                            <h2 class="mb-0"> <button class="btn btn-light btn-block text-left p-3 rounded-0" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    <div class="d-flex align-items-center justify-content-between"> <span>Credit/Debit Card</span>
                                        <div class="icons"> <img src="https://i.imgur.com/2ISgYja.png" width="30"> <img src="https://i.imgur.com/W1vtnOV.png" width="30"> </div>
                                    </div>
                                </button> </h2>
                        </div>
                        <div id="collapseOne" class="collapseshow" aria-labelledby="headingOne" data-parent="#accordionExample">
                            <div class="card-body payment-card-body"> <span class="font-weight-normal card-text">Card Number</span>
                                <div class="input"> <i class="fa fa-credit-card"></i> <input type="text" class="form-control" placeholder="0000 0000 0000 0000"> </div>
                                <div class="row mt-3 mb-3" name="paymentMethod">
                                    <div class="col-md-6"> <span class="font-weight-normal card-text">Expiry Date</span>
                                        <div class="input"> <i class="fa fa-calendar"></i> <input type="text" class="form-control" placeholder="MM/YY" pattern="[0-9]{2}./[0-9]{2}"> </div>
                                    </div>
                                    <div class="col-md-6"> <span class="font-weight-normal card-text">CVC/CVV</span>
                                        <div class="input"> <i class="fa fa-lock"></i> <input type="text" class="form-control" placeholder="000"> </div>
                                    </div><br><br>
                                    <p><div class="col-md-6"> <span class="font-weight-normal card-text">Name on Card</span>
                                        <div class="input"> <i class="fa fa-credit-card"></i> <input type="text" class="form-control" placeholder="Name on Card"> </div>
                                    </div> 
                                    <div class="col-md-6"> <span class="font-weight-normal card-text">Total Price</span>
                                        <div class="input"> <i class="fa fa-lock"></i> <input type="text" class="form-control" disabled="disabled"><%=rs.getDouble("totPrice") %> </div>
                                    </div>                                                                   
                                </div><br><button class="button" onclick="submit()">SUBMIT</button>
                                <script>
                                    	function submit(){
                                    		document.location.href = "homepage.jsp";
                                    	}
                               </script>
                               <%
		    						con.close();
		    						} catch (Exception e) {
		    						e.printStackTrace();
		    						}
                               %>
                               <br><span class="text-muted certificate-text"><i class="fa fa-lock"></i> Your transaction is secured with ssl certificate</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script type='text/javascript' src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js'></script>
                                <script type='text/javascript' src=''></script>
                                <script type='text/javascript' src=''></script>
                                <script type='text/Javascript'></script>
        
</body>
</html>
