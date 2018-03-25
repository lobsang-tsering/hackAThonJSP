<%-- 
    Document   : secondPage
    Created on : Mar 25, 2018, 2:44:24 PM
    Author     : lobsang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/secondPage.css">
        <title>JSP Page</title>
    </head>
    <body>
        <html>
<head>
	<title>Central Board of Secondary Education</title>
	<link rel="stylesheet" type="text/css" href="secondPage.css">
</head>
<body>

	<div id="photoUpload">
		<div id="mainContainer">
                    <form id="picForm"  action="SecondPage" method="POST">

				 <label>Board : </label>
				 <select>
				 	<option>ICSE</option>
				 	<option>CBSE</option>
				 	<option>State</option>
				 </select>
				 <br><br>
				 <label>Marks: </label> <input type="text" name="Marks"><br><br>
	 		 	<label> <h4>Upload Your Profile Pic. </h4></label> <br><br>
	 		    <input type="file" name="pic" accept="image/*">
	  			<input type="submit"><br>
			</form>
		 </div>
	</div>
</body>

</html>
    </body>
</html>
