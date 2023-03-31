<%--
  Created by IntelliJ IDEA.
  User: jijae
  Date: 2023-03-25
  Time: 오후 8:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
    <head>
        <title>회원가입</title>
    </head>
<body>

    <h1>회원가입</h1>
    <script>
        let JoinForm__submitDone = false;

        function JoinForm__submit(form){
            if(JoinForm__submitDone){
                alert('처리 중입니다.');
                return;
            }
            form.loginId.value = form.loginId.value.trim();

           if( form.loginId.value.length == 0 ){
               alert('로그인 아이디를 입력해주세요.');
               form.loginId.focus();
               return;
           }
            form.loginPw.value = form.loginPw.value.trim();

            if( form.loginPw.value.length == 0 ){
                alert('로그인 비번을 입력해주세요.');
                form.loginPw.focus();
                return;
            }
            form.loginPwConfirm.value = form.loginPwConfirm.value.trim();

            if( form.loginPwConfirm.value.length == 0 ){
                alert('로그인 비번 확인을 입력해주세요.');
                form.loginPwConfirm.focus();
                return;
            }
            if(form.loginPw.value != form.loginPwConfirm.value){
                alert('로그인 비번이 일치하지 않습니다.')
                form.loginPwConfirm.focus();
            }

            form.name.value = form.name.value.trim();

            if( form.name.value.length == 0 ){
                alert('이름을 입력해주세요.');
                form.name.focus();
                return;
            }
            alert('당신은 모든 시련을 통과했습니다.');
            form.submit();
            JoinForm__submitDone = true;
        }
    </script>
    <form action="doJoin" method="post" onsubmit="JoinForm__submit(this); return false;">
        <div>로그인 아이디 : <input autocomplete="off" placeholder="로그인 아이디를 입력해주세요." name="loginId" type="text"></div>
        <div>로그인 비번 : <input autocomplete="off" placeholder="로그인 비번을 입력해주세요." name="loginPw" type="password"></div>
        <div>로그인 비번 확인 : <input autocomplete="off" placeholder="로그인 비번 확인을 입력해주세요." name="loginPwConfirm" type="password"></div>
        <div>이름 : <input autocomplete="off" placeholder="이름을 입력해주세요." name="name" type="text"></div>
        <div>
<%--            <input type="submit" value="작성">--%>
            <button type="submit">가입</button>
            <button type="button">
                <a href="../home/main">취소</a>
            </button>
        </div>
    </form>


</body>
</html>
