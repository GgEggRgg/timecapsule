<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html>
<head>
    <meta charset="utf-8" name="viewport" content="width=device-width, height=device-height, minimum-scale=1.0, maximum-scale=1.0, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>그룹 목록</title>
</head>

<body>
<header>
    <h1>메인 화면</h1>
</header>

<form>
    <a href="/group">
        <input type="button" value="그룹 조회">
    </a>

    <a href="/group/new">
        <input type="button" value="그룹 가입">
    </a>

    <a href="/group/new">
        <input type="button" value="그룹 생성">
    </a>

    <a href="/member/{id}/edit">
        <input type="button" value="내 정보 수정">
    </a>

    <a href="/member/{id}/delete" method="post">
        <input type="button" value="회원 탈퇴">
    </a>
</form>
</body>
</html>