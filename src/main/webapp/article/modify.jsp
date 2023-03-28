<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: jijae
  Date: 2023-03-25
  Time: 오후 8:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<%
    Map<String, Object> articleRow = (Map<String, Object>) request.getAttribute("articleRow");
%>

<html>
    <head>
        <title>게시물 수정</title>
    </head>
<body>

    <h1>게시물 수정</h1>

    <form action="doModify" method="post">
<%--        <input type="hidden" name="id" value="<%=(int) articleRow.get("id")%>">--%>
<%--        <input type="hidden" name="id" value="<%= Integer.parseInt(request.getParameter("id"))%>">--%>
        <input type="hidden" name="id" value="${param.id}">
        <div><%= articleRow.get("id")%></div>
        <div><%= articleRow.get("regDate")%></div>
        <div>제목 : <input autocomplete="off" placeholder="제목을 입력해주세요." name="title" type="text" value="<%= (String) articleRow.get("title")%>"></div>
        <div>내용 : <textarea autocomplete="off" placeholder="내용을 입력해주세요." name="body" type="text" ><%= (String) articleRow.get("body")%></textarea></div>
        <div>
<%--            <input type="submit" value="작성">--%>
            <button type="submit">수정</button>
            <a href="list">리스트</a>
        </div>
    </form>


</body>
</html>
