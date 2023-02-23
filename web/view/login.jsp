<%-- 
    Document   : login
    Created on : Aug 23, 2022, 8:19:58 PM
    Author     : Namqd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <style>
            h1{
                text-align: center;
            }
            form {
                width: 500px;
                margin: 50px auto;
                text-align: center;
            }

            input[type="text"],
            input[type="password"] {
                padding: 10px;
                width: 80%;
                margin: 20px 0;
                border: 1px solid gray;
                border-radius: 5px;
                outline: none;
                font-size: 16px;
            }

            input[type="submit"] {
                padding: 10px 20px;
                background-color: blue;
                color: white;
                border: none;
                border-radius: 5px;
                font-size: 16px;
                cursor: pointer;
            }

            input[type="submit"]:hover {
                background-color: darkblue;
            }
        </style>
        <h1>Login form</h1>
        <h5>${requestScope.error}</h5>
        <form action="login" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username">
            <br><br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password">
            <br><br>
            <input type="submit" value="Submit">
        </form>
    </body>
</html>
