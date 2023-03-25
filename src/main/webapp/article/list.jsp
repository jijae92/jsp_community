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
%>

<html>
<head>
    <title>게시물 리스트</title>
</head>
<body>
<h1>게시물 리스트 v1</h1>
<ul>
    <li><%=articleRows.get(0).get("id")%>번,
        <%=articleRows.get(0).get("regDate")%>,
        <%=articleRows.get(0).get("updateDate")%>,
        <%=articleRows.get(0).get("title")%>
    </li>
    <li><%=articleRows.get(1).get("id")%>번,
        <%=articleRows.get(1).get("regDate")%>,
        <%=articleRows.get(1).get("updateDate")%>,
        <%=articleRows.get(1).get("title")%>
    </li>
    <li><%=articleRows.get(2).get("id")%>번,
        <%=articleRows.get(2).get("regDate")%>,
        <%=articleRows.get(2).get("updateDate")%>,
        <%=articleRows.get(2).get("title")%>
    </li>
</ul>

<h1>게시물 리스트 v2</h1>

<ul>
    <%
        for(int i = 0 ; i< 3; i++){
    %>
    <li><%=articleRows.get(i).get("id")%>번,
        <%=articleRows.get(i).get("regDate")%>,
        <%=articleRows.get(i).get("updateDate")%>,
        <%=articleRows.get(i).get("title")%>
    </li>
    <%
        }
    %>
</ul>
<h1>게시물 리스트 v3</h1>
<ul>
    <%
        for(int i = 0 ; i< 3; i++){
            Map<String,Object> articleRow = articleRows.get(i);
    %>
    <li><%=articleRow.get("id")%>번,
        <%=articleRow.get("regDate")%>,
        <%=articleRow.get("updateDate")%>,
        <%=articleRow.get("title")%>
    </li>
    <%
        }
    %>
</ul>
<h1>게시물 리스트 v4</h1>
<ul>
    <%
        for(int i = 0 ; i< articleRows.size(); i++){
            Map<String,Object> articleRow = articleRows.get(i);
    %>
    <li><%=articleRow.get("id")%>번,
        <%=articleRow.get("regDate")%>,
        <%=articleRow.get("updateDate")%>,
        <%=articleRow.get("title")%>
    </li>
    <%
        }
    %>
</ul>
<h1>게시물 리스트 v5</h1>
<ul>
    <%
        for(Map<String,Object> articleRow : articleRows){

    %>
    <li><%=articleRow.get("id")%>번,
        <%=articleRow.get("regDate")%>,
        <%=articleRow.get("updateDate")%>,
        <%=articleRow.get("title")%>
    </li>
    <%
        }
    %>
</ul>
</body>
</html>
