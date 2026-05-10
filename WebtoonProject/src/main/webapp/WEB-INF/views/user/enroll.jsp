<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>회원가입</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
      rel="stylesheet">

<style>

    *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body{
        background-color: #f1f3f5;
    }

    #wrap{
        width: 1000px;
        height: 800px;

        margin: auto;
        margin-top: 80px;

        background-color: white;

        border-radius: 20px;

        border: 1px solid lightgray;
    }

    /* 왼쪽 */

    #left{
        width: 40%;
        height: 800px;

        background-color: #20c997;

        float: left;

        border-top-left-radius: 20px;
        border-bottom-left-radius: 20px;

        color: white;

        padding-top: 200px;
        padding-left: 40px;
        padding-right: 40px;
    }

    #left h1{
        font-size: 50px;

        margin-bottom: 30px;
    }

    #left p{
        font-size: 18px;

        line-height: 35px;
    }

    /* 오른쪽 */

    #right{
        width: 60%;
        height: 700px;

        float: left;

        padding: 70px;
    }

    #title{
        font-size: 40px;
        font-weight: bold;

        margin-bottom: 50px;
    }

    .input-area{
        margin-bottom: 30px;
    }

    .input-area label{
        display: block;

        margin-bottom: 10px;

        font-weight: bold;
    }

    .input-area input{
        width: 100%;
        height: 50px;

        border: 1px solid lightgray;
        border-radius: 10px;

        padding-left: 15px;
    }

    .input-area input:focus{
        outline: none;

        border: 2px solid #20c997;
    }

    #join-btn{
        width: 100%;
        height: 55px;

        border: none;
        border-radius: 10px;

        background-color: #20c997;

        color: white;

        font-size: 18px;
        font-weight: bold;

        margin-top: 20px;
    }

    #join-btn:hover{
        background-color: #12b886;
    }

    #login-text{
        text-align: center;

        margin-top: 30px;
    }

    #login-text a{
        text-decoration: none;

        color: #20c997;

        font-weight: bold;
    }

</style>

</head>

<body>

<div id="wrap">

    <!-- 왼쪽 -->

    <div id="left">

        <h1>
            웹툰세상
        </h1>

        <p>
            네이버 웹툰과 카카오 웹툰을
            한 곳에서 즐겨보세요.
        </p>

    </div>

    <!-- 오른쪽 -->

    <div id="right">

        <div id="title">

            회원가입

        </div>

        <form action="http://localhost:8088/toon/join.do" method="post">

            <div class="input-area">

                <label>
                    아이디
                </label>

                <input type="text" name="userId"
                       placeholder="아이디 입력">

            </div>

            <div class="input-area">

                <label>
                    비밀번호
                </label>

                <input type="password" name="password"
                       placeholder="비밀번호 입력">

            </div>

            <div class="input-area">

                <label>
                    이메일
                </label>

                <input type="email" name="email"
                       placeholder="이메일 입력">

            </div>

            <div class="input-area">

                <label>
                    닉네임
                </label>

                <input type="text" name="nickName"
                       placeholder="닉네임 입력">

            </div>

            <button type="submit"
                    id="join-btn">

                회원가입

            </button>

        </form>

        <div id="login-text">

            이미 회원이신가요?

            <a href="#">

                로그인

            </a>

        </div>

    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>