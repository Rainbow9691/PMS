<%@page import="com.myProject.PMS.servlet.entity.Players"%>
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
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    form {
        background-color: #ffffff;
        padding: 40px;
        border-radius: 12px;
        box-shadow: 0 6px 16px rgba(0, 0, 0, 0.15);
        width: 400px;
        display: flex;
        flex-direction: column;
        gap: 15px;
    }

    input[type="text"],
    input[type="number"] {
        padding: 12px;
        border: 2px solid #c8e6c9;
        border-radius: 6px;
        font-size: 16px;
        outline: none;
        transition: 0.3s ease;
    }

    input[type="text"]:focus,
    input[type="number"]:focus {
        border-color: #4caf50;
        background-color: #f1f8e9;
    }

    input[readonly] {
        background-color: #f5f5f5;
        cursor: not-allowed;
    }

    input[type="submit"] {
        background-color: #4caf50;
        color: white;
        border: none;
        padding: 14px;
        font-size: 16px;
        font-weight: bold;
        border-radius: 8px;
        cursor: pointer;
        transition: 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #388e3c;
        transform: scale(1.03);
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #2e7d32;
    }
</style>
</head>
<body>
	<% Players player = (Players)request.getAttribute("player"); %>
	
	<form action="updateplayerservlet" method="post">
	<input type="number" value="<%=player.getId()%>" name="id" readonly="readonly"><br>
	<input type="text" value="<%=player.getTitle()%>" name="title"><br>
	<input type="number" value="<%=player.getAge()%>" name="age"><br>
	<input type="number" value="<%=player.getSalary()%>" name="salary"><br>
	<input type="text" value="<%=player.getTeam()%>" name="team"><br>
	<input type="text" value="<%=player.getNationality()%>" name="nationality"><br>
	<input type="submit" value="UPDATE PLAYER">
	</form>
</body>
</html>