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
<table border="1" style="text-align: center;">
    <colgroup>
    <col width="100">
    <col >
    <col>
    <col width="100">
    <col width="100">
    </colgroup>
    <thead>

        <tr>
            <th>번호</th>
            <th>현재 날짜</th>
            <th>수정 날짜</th>
            <th>제목</th>
            <th>날짜</th>
            <th>비고</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><%= articleRow.get("id")%></td>
            <td><%= articleRow.get("regDate")%></td>
            <td><%= articleRow.get("updateDate")%></td>
            <td><%= (String) articleRow.get("title")%></td>
            <td><%= (String) articleRow.get("body")%></td>
            <td><a href="doDelete?id=<%=articleRow.get("id")%>">삭제하기</a></td>
        </tr>
    </tbody>
</table>

    <a href="list">리스트로 돌아가기</a>
</div>
</body>
</html>
