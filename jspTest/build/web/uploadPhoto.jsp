<%-- 
    Document   : uploadPhot
    Created on : Mar 25, 2018, 3:30:09 PM
    Author     : lobsang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Payment Gatway</title>
	<link rel="stylesheet" type="text/css" href="css/paymentGatWay.css">

</head>
<body>

	<div id="paymentDiv">
		<input type="submit" name="CreditCard" value="Credit Card">
		<input type="submit" name="debitCard" value="Debit Card">
		
		<div id="paymentFormDiv">
			<label> Name on card : </label> <input type="text" name="cardNumber"> <br>
			<label> Card Number : </label> <input type="Number" name="cardNumber"> <br>
			<label> CVV Number : </label> <input type="Number" name="CVV"> <br>
			<label>Expiry Date :
				<select>
					<option>Month</option>
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
					<option>6</option>
					<option>7</option>
					<option>8</option>
					<option>9</option>
					<option>10</option>
					<option>11</option>
					<option>12</option>
				</select>

				<select>
					<option>Year</option>
					<option>2018</option>
					<option>2019</option>
					<option>2020</option>
					<option>2021</option>
					<option>2022</option>
					<option>2023</option>
					<option>2024</option>
					<option>2025</option>
					<option>2026</option>
					<option>2027</option>
					<option>2028</option>
					<option>2029</option>
				</select>
				<br>

				<input type="submit" value="Pay" name="pay"><br>

		</div>
	</div>

</body>
</html>