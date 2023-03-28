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
        <title>게시물 작성</title>
    </head>
<body>

    <h1>게시물 작성</h1>

    <form action="doWrite" method="post">
        <div>제목 : <input autocomplete="off" placeholder="제목을 입력해주세요." name="title" type="text"></div>
        <div>내용 : <textarea autocomplete="off" placeholder="내용을 입력해주세요." name="body" type="text"></textarea></div>
        <div>
<%--            <input type="submit" value="작성">--%>
            <button type="submit">작성</button>
            <a href="list">리스트</a>
        </div>
    </form>


</body>
</html>
