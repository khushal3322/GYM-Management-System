<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="javax.*" import="controller.MemberController"
	import="component.Member" import="Servlet.one_Featch"
	import="java.util.List"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ALL Members</title>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    padding: 20px;
}

h1 {
    text-align: center;
    color: #333;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin: 20px 0;
}

th, td {
    text-align: left;
    padding: 8px;
    border: 1px solid #ddd; /* Light grey border */
}

th {
    background-color: #007bff;
    color: white;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

.form-container {
    background-color: #ffffff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 500px; /* Adjust based on your preference */
    margin: 20px auto; /* Centers the form container */
}

.form-group {
    margin-bottom: 20px;
}

label {
    display: block;
    margin-bottom: 10px;
}

input[type="number"],
select {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type="submit"] {
    width: 100%;
    background-color: #007bff;
    color: white;
    padding: 10px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #0056b3;
}
</style>
</head>
<body>

	<%!MemberController mc = new MemberController();%>

	<%!List<Member> featch_member_all = mc.featch_member_all();%>

	<h1>ALL THE MEMBERS</h1>
	<table>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Phone No</th>
			<th>Period</th>
			<th>Joining Date</th>
			<th>Expired Membership</th>
			<th>Pending Amount</th>
			<th>Paid Amount</th>
			<th>Total Amount</th>
			<th>Delete</th>
		</tr>
		<%
		for (Member member : featch_member_all) {
		%>
		<tr>
			<td><%=member.getId()%></td>
			<td><%=member.getName()%></td>
			<td><%=member.getPhone()%></td>
			<td><%=member.getPeriod()%></td>
			<td><%=member.getJoinOn()%></td>
			<td><%=member.getExpired()%></td>
			<td><%=member.getPendiningAmount()%></td>
			<td><%=member.getPaid()%></td>
			<td><%=member.getTotal_Amount()%></td>
			<td>
				<form action="one_delete" method="post">

					<input type="hidden" name="fetch" value="<%=member.getId()%>">
					<input type="submit" value="Delete">
				</form>
			</td>
		</tr>
		<%
		}
		%>

		<!-- Add more members as needed -->
	</table>
		

		  <div class="form-container">
        <form action="update_data" method="post">
            <div class="form-group">
                <label for="fetch_id">Enter The Member ID:</label>
                <input type="number" name="fetch" id="fetch_id" required>
                <label for="fetch_id">Select what you want to update:</label>
                <select name="update">
                    <option>Amount</option>
                    <option>Membership</option>
                </select>
            </div>
              <input type="number" name="edit" required>
            <input type="submit" value="Update">
        </form>
    </div>
<a href="All_Members.jsp">All member</a>
<a href="Add__member.jsp">ADD member</a>


</body>
</html>