<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>

<meta charset="UTF-8">

<title>웹툰세상</title>

<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect"
      href="https://fonts.gstatic.com"
      crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
      rel="stylesheet">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
      rel="stylesheet">

<link rel="stylesheet"
      href="<%=request.getContextPath()%>/resources/css/header.css">

<link rel="stylesheet"
      href="<%=request.getContextPath()%>/resources/css/main.css">

<link rel="stylesheet"
      href="<%=request.getContextPath()%>/resources/css/footer.css">

</head>

<body>

<div id="wrap">


    <section id="banner">

        <h1>
            웹툰 세상에 오신 것을 환영합니다
        </h1>

        <p>
            네이버 웹툰과 카카오 웹툰을 한 곳에서 만나보세요
        </p>

    </section>

    <main>

        <div class="platform-title">

            인기 웹툰 플랫폼

        </div>

        <div class="card-area">

            <!-- 네이버 -->

            <div class="card webtoon-card">

                <img src="data:image/png;base64,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"
                    class="card-img-top">

                <div class="card-body">

                    <h5 class="card-title">

                        네이버 웹툰

                    </h5>

                    <p class="card-text">

                        다양한 장르의 인기 웹툰

                    </p>

                    <a href="https://comic.naver.com"
                       class="btn btn-success"
                       target="_blank">

                        이동하기

                    </a>

                </div>

            </div>

            <!-- 카카오 -->

            <div class="card webtoon-card">

                 <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAbFBMVEUAAAD///8TExP6+vp3d3dlZWWGhoZ+fn5BQUH29vbg4OBoaGjZ2dkyMjIiIiLn5+fv7+8bGxtdXV3Q0NBQUFCwsLCmpqa5ubmenp6UlJTAwMDKysqMjIwNDQ1wcHBHR0dYWFgrKys2NjaqqqpGDmWyAAAC5klEQVR4nO3a61LqQBCF0Sh4RVTwCnjn/d/RKqo8A4Hs7iFHuy2/9ZeZSTYJkw3aNAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA4Ac8R5/ApqODQbeD492ThnLScp8lT+SkYa+ESsfpXKg5g+ZMvXzelVD56YRjOeeuuZevn/6ChFYC6x3In9C8C427OH3CqZzyZJ7uS/qECzllNUSOuMme8FnOmK/GPMgxl8kTzuSM6WrMrRzzmDzhlZpwXTMoacJXOeHr8ugL/ZY6of6ITb6GyVHz1AkHanzZJh0bbtKEQ+eZjCrXzZPQXVcq63eahO9y+HrlrKzfaRI+us9b1+9l2oTXavTmvVdXv7MktEu395zb9TtLQv0MaP1AI8e263eShLp0L1pLV9XvJAmf5OBpa2ldv2cpE1b26ZrhORKeyrHb34l0/b5NmPBOjn3fWnsix2/W7xwJZem+2LH4jVw8X0Jv6S4q6neKhPKK7P6N0F+/MyTUn6rdv/Mu5ZxxsoS6dL/uXP1Dzlmv3xkSytJ91bH8uZp0lithTen2nvgoVcK5HHjYtb6ctdZkEyT0nmqLrt/ljYlPqEv3Uef63vodn9C9ZbQ5N6jwhLp034sD6IfMv/odnlCX7rE4wKWc+ZAmYXXpLnz1OzqhLt0n8ggvrrnRCSu+Bm1zXf/ghM7PUgfXZzg4oXM/7KD34WWKhHuV7sLzLI1NqEv3zDhC0xzL+aMECXXpdvwropy/SJDQcYKa4y0KTei5ybQ3ucIsPOHepbuwt6rIhPuX7sJ+3EQm1A/sD9dR7MoQmbBH6S7M2heY0FecLeYqgQl7le7CuhPiEvYr3YVVv+MS9ivdhbUjxyXsWboL46kalrDqb/GS8T8A9X+6+z8Jh/oH3aojyZXmerP9xmsot0BP6S50/dbl9/sS6keFp3QX+lumPlKfhM2hMpGvpj0SAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB/wif4BDIZfHnleQAAAABJRU5ErkJggg=="
                    class="card-img-top">

                <div class="card-body">

                    <h5 class="card-title">

                        카카오 웹툰

                    </h5>

                    <p class="card-text">

                        최신 인기 웹툰과 웹소설

                    </p>

                    <a href="https://webtoon.kakao.com"
                       class="btn btn-warning">

                        이동하기

                    </a>

                </div>

            </div>

        </div>

    </main>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>