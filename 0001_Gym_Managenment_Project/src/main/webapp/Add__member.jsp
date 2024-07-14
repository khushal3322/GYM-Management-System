<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Gym Member</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        display: flex;
        justify-content: center;
        padding-top: 50px;
    }

    form {
        background-color: #ffffff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 300px;
    }

    h1 {
        color: #333;
        font-size: 24px;
        text-align: center;
        margin-bottom: 20px;
    }

    label {
        font-weight: bold;
        margin-top: 10px;
        display: block;
    }

    input[type="text"],
    input[type="number"],
    input[type="submit"] {
        width: 100%;
        padding: 8px;
        margin: 5px 0 15px;
        border: 1px solid #ddd;
        border-radius: 4px;
        box-sizing: border-box; /* Makes sure padding doesn't affect overall width */
    }

    input[type="submit"] {
        background-color: #5cb85c;
        color: white;
        cursor: pointer;
        border: none;
    }

    input[type="submit"]:hover {
        background-color: #4cae4c;
    }
</style>
</head>
<body>

<form action="addmember" method="post">
    <h1>ADD GYM Members</h1>
   
    
    
    <label for="name_id">name</label>
    <input type="text" name="name" id="name_id"><br>
    <label for="phone_id">Phone</label>
    <input type="number" name="phone" id="phone_id"><br>
    <label for="joining_id">joining date YYYY-MM-DD</label>
    <input type="text" name="joining_date" id="joining_id"><br>
     <label for="Period_id">Period</label>
    <input type="number" name="Period" id="Period_id"><br>
    <label for="fees_id">fees paid</label>
    <input type="number" name="fees" id="fees_id"><br>
    
    <input type="submit" value="Submit">
    
    
</form>

<a href="All_Members.jsp">All member</a>


</body>
</html>