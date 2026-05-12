<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>내 정보</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, Helvetica, sans-serif;
        }

        body {
            background-color: #f1f1f1;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .mypage-box {
            width: 500px;
            background-color: white;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        }

        .mypage-box h1 {
            text-align: center;
            margin-bottom: 30px;
            color: #333;
        }

        .info-group {
            margin-bottom: 20px;
        }

        .info-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #555;
        }

        .info-group input {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 10px;
            font-size: 16px;
        }

        .info-group input:focus {
            outline: none;
            border-color: #20c997;
        }

        .btn-area {
            display: flex;
            gap: 10px;
            margin-top: 30px;
        }

        .btn {
            flex: 1;
            padding: 12px;
            border: none;
            border-radius: 10px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }

        .update-btn {
            background-color: #20c997;
            color: white;
        }

        .update-btn:hover {
            background-color: #17b589;
        }

        .delete-btn {
            background-color: #333;
            color: white;
        }

        .delete-btn:hover {
            background-color: #111;
        }
    </style>
</head>
<body>

    <div class="mypage-box">

        <h1>내 정보</h1>

        <form action="updateMember.do" method="post">

            <div class="info-group">
                <label for="userId">아이디</label>
                <input type="text" id="userId" name="userId" value="${ loginUser.userId }" readonly>
            </div>

            <div class="info-group">
                <label for="userName">이름</label>
                <input type="text" id="userName" name="userName" value="${ loginUser.userName }">
            </div>

            <div class="info-group">
                <label for="email">이메일</label>
                <input type="email" id="email" name="email" value="${ loginUser.email }">
            </div>

            <div class="info-group">
                <label for="phone">전화번호</label>
                <input type="text" id="phone" name="phone" value="01012345678">
            </div>

            <div class="btn-area">
                <button type="submit" class="btn update-btn">수정하기</button>
                <button type="button" class="btn delete-btn">회원탈퇴</button>
            </div>

        </form>

    </div>

</body>
</html>