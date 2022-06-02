<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>회원가입</title>
    <meta charset="utf-8" name="viewport" content="width=device-width, height=device-height, minimum-scale=1.0, maximum-scale=1.0, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
</head>

<body>
<header>
    <h2>회원가입</h2>
</header>
<script>
    <!-- 비밀번호랑 비밀번호 확인 같은지 -->
    var a = '@{email}';
    console.log(a);
    function check_pw(){
        var p = document.getElementById('password').value;
        var p_cf = document.getElementById('ckpassword').value;

        if (p!=p_cf) {
            document.getElementById('msg').innerHTML = "비밀번호가 다릅니다. 다시 확인해 주세요.";
        }
        else {
            document.getElementById('msg').innerHTML = "";
        }
        if (p_cf=="") {
            document.getElementById('msg').innerHTML = "";
        }
    }
</script>
<form action="/member/new" method="post">
    <div class="input-box">
        <input id="email" type="email" name="email" placeholder="이메일">
        <label for="email"> 이메일</label>
    </div>

    <div class="input-box">
        <input id="nickname" type="text" name="nickname" placeholder="닉네임">
        <label for="nickname">닉네임</label>
    </div>

    <div class="input-box">
        <input id="phone" type="text" name="phone" placeholder="핸드폰번호">
        <label for="phone">핸드폰번호</label>
    </div>

    <a href="">
        <input type="submit" value="검증">
    </a>

    <div class="input-box">
        <input id="password" type="password" name="password" placeholder="비밀번호">
        <label for="password">비밀번호</label>
    </div>

    <div class="input-box">
        <input id="ckpassword" type="password" name="ckpassword" placeholder="비밀번호 확인" onkeyup="check_pw()">
        <label for="ckpassword">비밀번호 확인</label>
        <label id="msg"></label>
    </div>

    <button type="button" id="join">회원가입</button>

</form>
</body>
</html>
