<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    request.setCharacterEncoding("UTF-8");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if (username == null) username = "";
    if (password == null) password = "";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Kết quả đăng nhập</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            background-color: #f5f5f5;
        }
        .container {
            display: flex;
            width: 900px;
            border: 2px solid #000;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .login-section {
            flex: 1;
            padding: 40px;
            border-right: 2px solid #000;
        }
        .result-section {
            flex: 1;
            padding: 40px;
        }
        h1 {
            text-align: center;
            font-size: 24px;
            margin-top: 0;
        }
        h2 {
            text-align: center;
            font-size: 20px;
            margin-top: 0;
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #999;
            border-radius: 3px;
            box-sizing: border-box;
            font-size: 14px;
        }
        button {
            background-color: #e8e8e8;
            border: 1px solid #999;
            padding: 8px 16px;
            cursor: pointer;
            font-size: 14px;
            border-radius: 3px;
        }
        button:hover {
            background-color: #d0d0d0;
        }
        .result-text {
            margin: 20px 0;
            font-size: 14px;
        }
        a {
            color: #0066cc;
            text-decoration: underline;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="login-section">
            <h1>ĐĂNG NHẬP</h1>
            <form action="result.jsp" method="post">
                <div class="form-group">
                    <label for="username">Tên đăng nhập:</label>
                    <input type="text" id="username" name="username" required>
                </div>
                <div class="form-group">
                    <label for="password">Mật khẩu:</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <button type="submit">Đăng nhập</button>
            </form>
        </div>
        <div class="result-section">
            <h2>KẾT QUẢ ĐĂNG NHẬP</h2>
            <div class="result-text">
                <p><strong>Tên đăng nhập:</strong> <%= username %></p>
                <p><strong>Mật khẩu:</strong> @<%= password %></p>
            </div>
            <p><a href="login.jsp">Quay lại</a></p>
        </div>
    </div>
</body>
</html>

