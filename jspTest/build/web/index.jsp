<%-- 
    Document   : index
    Created on : Mar 13, 2018, 11:46:46 PM
    Author     : lobsang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/index.css">
        <link rel="stylesheet" type="text/css" href="css/form.css">
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Poppins">
        <title>JSP Page</title>
    </head>
    <body>
         <ul id="nav_ul">
            <li><a class="active" href="#home">Home</a></li>
            <li><a href="#news">News</a></li>
            <li><a href="#contact">Contact</a></li>
            <li><a href="#about">About</a></li>
        </ul>
        
        <br>
               
        
        <div id="main">
	
	   <form action="regisration.jsp">
				<label> 
उम्मीदवार का नाम (Candidate's Name):</label>  <input type="text" name="name"><br>
				<label> 
मां का नाम (Mother's Name): </label>  <input type="text" name="motherName" align="left"><br>
				<label> 
पिता का नाम (Father's Name) : </label> <input type="text"	name="fatherName"><br>
				<label> 
वर्ग (Category) : </label>

				<select>
		  				<option value="ur">UR</option>
		 				 <option value="obc">OBC</option>
		 				 <option value="sc">SC</option>
		  				<option value="st">ST</option>
		  				<option value="ph">PH</option>
				</select>
				<br>

				<label> 
जन्म की तारीख (Date of Birth) : </label> <input type="date" name="dob"> <br>

				<label> 
लिंग (Gender :) </label> <select>
					<option value="male">Male</option>
					<option value="female">Female</option>
					<option value="others">Others</option>
				</select><br>

				<label> 
राष्ट्रीयता (Nationality) : </label>

				<select>
		  				<option value="indian">Indain</option>
		 				 <option value="others">Others</option>
		 		</select>
		 		<br>

		 		<label> 
आधार कार्ड संख्या ( Aadhaar Card Number ): </label> <input type="Number" name="aadhaarNumber"><br>
		<br>
		<div class="btn">
	 		<input type="submit" name="submit"  value="Submit">
	 		<input  type="submit" name="reset" value="reset">
 		</div>
</form>

	</div>
    </body>
</html>
