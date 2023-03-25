<%@ page import="com.sbs.exam.Rq" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%

  int dan = (int) request.getAttribute("dan");
  int limit = (int) request.getAttribute("limit");

%>
<h1><%=dan%></h1>
<% for(int i = 1; i <= limit; i++) { %>
<div><%=dan%> * <%=i%> = <%=dan * i%></div>
<% } %>
</body>
</html>
