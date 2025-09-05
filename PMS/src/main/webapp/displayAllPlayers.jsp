<%@page import="com.myProject.PMS.servlet.entity.Players"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(to right, #e0f7fa, #fffde7);
        padding: 40px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        background-color: #fff;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
        overflow: hidden;
    }

    th, td {
        padding: 14px 18px;
        text-align: center;
        border-bottom: 1px solid #e0e0e0;
        font-size: 16px;
    }

    th {
        background-color: #4caf50;
        color: white;
    }

    tr:hover {
        background-color: #f1f8e9;
    }

    a {
        text-decoration: none;
        padding: 8px 14px;
        border-radius: 6px;
        font-weight: 500;
        transition: 0.3s ease;
        font-size: 14px;
    }

    a[href^="find-by-id"] {
        background-color: #0288d1;
        color: #fff;
    }

    a[href^="find-by-id"]:hover {
        background-color: #0277bd;
    }

    a[href^="delete-by-id"] {
        background-color: #e53935;
        color: #fff;
    }

    a[href^="delete-by-id"]:hover {
        background-color: #c62828;
    }

    a[href="index.jsp"] {
        display: inline-block;
        margin-top: 30px;
        background-color: #ff9800;
        color: white;
        padding: 12px 24px;
        border-radius: 10px;
        font-weight: bold;
        font-size: 16px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
        transition: 0.3s ease;
    }

    a[href="index.jsp"]:hover {
        background-color: #fb8c00;
        transform: scale(1.05);
    }
</style>
</head>
<body>
	<%
		List<Players> players = (List)request.getAttribute("playerslist"); 
	%>
	
	
	<table border="">
		<tr>
			<th>PlayerId</th>
			<th>Player_name</th>
			<th>Player_age</th>
			<th>Player_salary</th>
			<th>Player_team</th>
			<th>Player_nationality</th>
			<th>Update</th>
			<th>Delete</th>
		</tr>
		<%for(Players player : players){ %>
		<tr>
			<td><%= player.getId() %></td>	
			<td><%= player.getTitle() %></td>	
			<td><%= player.getAge() %></td>	
			<td><%= player.getSalary() %></td>	
			<td><%= player.getTeam() %></td>	
			<td><%= player.getNationality() %></td>	
			<td><a href="find-by-id?playerid=<%=player.getId()%>">Update</a></td>
			<td><a href="delete-by-id?playerid=<%=player.getId()%>">Delete</a></td>
		</tr>
		<% } %>
	</table>
	
	<a href="index.jsp">Back to DashBoard</a>
	
</body>
</html>