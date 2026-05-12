<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, Helvetica, sans-serif;
        }

        body {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #f1f1f1;
        }

        .login-box {
            width: 400px;
            background-color: white;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        .login-box h1 {
            text-align: center;
            margin-bottom: 30px;
            color: #20c997;
        }

        .input-group {
            margin-bottom: 20px;
        }

        .input-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #555;
        }

        .input-group input {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 10px;
            font-size: 16px;
        }

        .input-group input:focus {
            outline: none;
            border-color: #20c997;97;
        }

        .login-btn {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 10px;
            background-color: #20c997;97;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }

        .login-btn:hover {
            background-color: #17b589;
        }

        .bottom-menu {
            margin-top: 20px;
            text-align: center;
            font-size: 14px;
        }

        .bottom-menu a {
            text-decoration: none;
            color: #20c997;
            margin: 0 10px;
        }

        .bottom-menu a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="login-box">
        <h1>LOGIN</h1>

        <form action="http://localhost:8088/toon/login.do" method="post">

            <div class="input-group">
                <label for="userId">아이디</label>
                <input type="text" id="userId" name="userId" placeholder="아이디 입력" required>
            </div>

            <div class="input-group">
                <label for="userPwd">비밀번호</label>
                <input type="password" id="userPwd" name="userPwd" placeholder="비밀번호 입력" required>
            </div>

            <button type="submit" class="login-btn">로그인</button>
 
        </form>

        <div class="bottom-menu">
            <a href="http://localhost:8088/toon/enroll.do">회원가입</a>
            <a href="#">아이디 찾기</a>
            <a href="#">비밀번호 찾기</a>
        </div>
    </div>

</body>
</html>
