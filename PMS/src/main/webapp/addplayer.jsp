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
        background: linear-gradient(to right, #e0f7fa, #fffde7); /* soft cricket-theme */
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    form {
        background-color: #ffffff;
        padding: 40px;
        border-radius: 12px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        display: flex;
        flex-direction: column;
        gap: 20px;
        width: 320px;
    }

    input[type="text"],
    input[type="number"] {
        padding: 12px;
        border: 1px solid #ccc;
        border-radius: 8px;
        font-size: 16px;
        transition: 0.3s ease;
    }

    input[type="text"]:focus,
    input[type="number"]:focus {
        border-color: #4caf50;
        outline: none;
        box-shadow: 0 0 5px rgba(76, 175, 80, 0.4);
    }

    input[type="submit"] {
        background-color: #4caf50;
        color: white;
        padding: 12px;
        border: none;
        border-radius: 8px;
        font-size: 16px;
        font-weight: 600;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #388e3c;
    }
</style>
</head>
<body>
	<form action="addplayer" method="post">
	
	<input type="text" placeholder="enter title" name="title"> <br>
	<input type="number" placeholder="enter age" name="age"> <br>
	<input type="number" placeholder="enter salary" name="salary"> <br>
	<input type="text" placeholder="enter team" name="team"> <br>
	<input type="text" placeholder="enter nationality" name="nationality"> <br>
	<input type="submit">
	
	</form>
</body>
</html>