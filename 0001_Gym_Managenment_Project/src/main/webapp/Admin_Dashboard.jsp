<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f0f0f0;
        margin: 0;
        padding: 20px;
        color: #333;
    }
    h1 {
        color: #333;
    }
    .button-container a button {
        background-color: #008CBA; /* Blue Button */
        color: white;
        padding: 10px 20px;
        margin: 10px 0;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        text-decoration: none;
        font-size: 16px;
        transition: background-color 0.3s;
    }
    .button-container a button:hover {
        background-color: #005f73; /* Darker blue on hover */
    }
    .button-container {
        margin: 20px 0;
    }
</style>
</head>
<body>
    <h1>CRUD Operations for Admin</h1>
    
    <div class="button-container">
        <a href="Add__member.jsp"><button>ADD Member</button></a>
        <a href="One_member_Featch.jsp"><button>Single Member</button></a>
        <a href="All_Members.jsp"><button>All Members</button></a>
    </div>
</body>
</html>