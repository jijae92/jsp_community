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
    List<Map<String, Object>> articleRows = (List<Map<String, Object>>) request.getAttribute("articleRows");
    int cPage = (int) request.getAttribute("page");
    int totalPage = (int) request.getAttribute("totalPage");
%>

<html>
<head>
    <title>게시물 리스트</title>
</head>
<body>

<h1>게시물 리스트 v5</h1>

<div>
    <a href="write">게시물 작성</a>
</div>

<table border="1" style="text-align: center;">
    <colgroup>
        <col width="100">
        <col>
        <col width="100">
    </colgroup>
    <thead>

    <tr>
        <th>번호</th>
        <th>현재 날짜</th>
        <th>제목</th>

    </tr>
    </thead>
    <tbody>
    <%
        for(Map<String,Object> articleRow : articleRows){

    %>
    <tr>
        <td><%= articleRow.get("id")%></td>
        <td><%= articleRow.get("regDate")%></td>
        <td><a href="detail?id=<%=(int) articleRow.get("id")%>"><%= (String) articleRow.get("title")%></a></td>

    </tr>
    <%
        }
    %>
    </tbody>
</table>
<style type="text/css">
    .page > a.red{
        color : red;
    }
</style>

<div class="page">
    <% for (int i = 1 ; i <= totalPage; i++) {  %>
        <a class="<%= cPage == i ? "red" : "" %>" href="list?page=<%=i%>"><%=i%></a>
   <% } %>
</div>
</body>
</html>
