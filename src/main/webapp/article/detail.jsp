<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: jijae
  Date: 2023-03-25
  Time: 오후 8:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Map<String, Object> articleRow = (Map<String, Object>) request.getAttribute("articleRow");
%>

<html>
<head>
    <title>게시물 상세페이지</title>
</head>
<body>

<h1>게시물 상세페이지</h1>

<div>번호 : <%= (int) articleRow.get("id")%></div>
<div>현재 날짜 :  <%= (String) articleRow.get("regDate")%></div>
<div>수정 날짜 :  <%= (String) articleRow.get("updateDate")%></div>
<div>제목 :  <%= (String) articleRow.get("title")%></div>
<div>내용 :  <%= (String) articleRow.get("body")%></div>
<div>
    <a href="list">리스트로 돌아가기</a>
</div>
</body>
</html>
