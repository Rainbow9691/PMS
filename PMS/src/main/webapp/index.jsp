<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap');

    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(to right, #e0f7fa, #fffde7); /* soft pastel blue-yellow */
        height: 100vh;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
    }

    #info h1 {
        font-size: 40px;
        color: #2e7d32;
        margin-bottom: 40px;
        position: relative;
        animation: bounce 2s infinite;
    }

    @keyframes bounce {
        0%, 100% { transform: translateY(0); }
        50% { transform: translateY(-8px); }
    }

    a {
        text-decoration: none;
        color: #fff;
        background-color: #ff9800;
        padding: 14px 30px;
        border-radius: 10px;
        font-size: 20px;
        font-weight: 600;
        display: inline-block;
        transition: all 0.3s ease;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
        position: relative;
    }

    a:hover {
        background-color: #f57c00;
        transform: scale(1.05);
    }

    #add, #view {
        margin: 20px;
        text-align: center;
    }

    #add a::before {
        display: inline-block;
        animation: swing 1.5s infinite;
    }

    #view a::before {
        display: inline-block;
        animation: wave 2s infinite ease-in-out;
    }

    @keyframes swing {
        0%, 100% { transform: rotate(0deg); }
        50% { transform: rotate(-20deg); }
    }

    @keyframes wave {
        0%, 100% { transform: translateX(0); }
        50% { transform: translateX(6px); }
    }
</style>
</head>
<body>
<div id = "info">
<h1>Player's Information</h1>
</div>
<div id = "add">
	<h2><a href = "addplayer.jsp">ADD PLAYER'S</a></h2>
</div>
<div>
	<h2><a href = "viewall">VIEW ALL PLAYER'S</a></h2>
</div>
</body>
</html>