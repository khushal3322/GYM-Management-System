<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="javax.*" import="controller.MemberController"
	import="component.Member" import="Servlet.one_Featch"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Description</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9; /* Light gray background */
            color: #333; /* Dark gray text */
        }

        .book-description {
            width: 600px;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #aaa; /* Lighter border color */
            border-radius: 5px;
            background-color: #fff; /* White background for the book description */
            box-shadow: 0 2px 4px rgba(0,0,0,0.1); /* Subtle shadow for depth */
        }

        .book-title {
            font-size: 24px;
            font-weight: bold;
            color: #2a2a72; /* Deep blue color */
        }

        .book-meta {
            margin-top: 5px;
            font-style: italic;
            color: #4a4e69; /* Dark slate color */
        }

        .description-title {
            margin-top: 20px;
            font-size: 18px;
            font-weight: bold;
            color: #9a8c98; /* Muted purple */
        }

        p, dl {
            color: #6b705c; /* Olive green text for a bit of contrast */
        }

        dt {
            font-weight: bold;
            color: #222; /* Almost black for the term */
        }

        dd {
            margin-left: 20px;
            margin-bottom: 10px;
            color: #344055; /* Darker blue for the definition/description */
        }
    </style>
</head>
<body>

	<%!MemberController mc = new MemberController();%>

		<%
		 
		int id = (int)request.getAttribute("id");;
		Member member = mc.Featch_member(id);
		%>
		


<div class="book-description">
    <div class="book-title">MEMBER</div>
    <div class="book-meta"><%=member.getId()%></div>
    <div class="description-title">Name</div>
   <div><%=member.getName()%></div>
    
    <div class="description-title">Details</div>
    <dl>
        <dt>Phone No:    <%=member.getPhone()%></dt>
        <dd></dd>
        
        <dt>Joining Date:  <%=member.getJoinOn()%></dt>
        <dd></dd>
        
          <dt>Expried Membership: <%=member.getExpired()%></dt>
        <dd></dd>
        
        <dt>Months:  <%=member.getPeriod()%></dt>
        <dd></dd>
        
        <dt>Pending Amount: <%=member.getPendiningAmount()%></dt>
        <dd></dd>
        
         <dt>Paid: <%=member.getPaid()%></dt>
    </dl>
</div>

</body>
</body>
</html>