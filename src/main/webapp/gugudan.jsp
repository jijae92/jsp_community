  Created by IntelliJ IDEA.
  User: jijae
  Date: 2023-03-08
  Time: 오후 1:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.sbs.exam.Rq"%>

<html>
<head>
    <title>Title</title>
    </head>
<body>
<%
    Rq rq = new Rq(request, response);
    int dan = rq.getIntParam("dan", 9);
    int limit = rq.getIntParam("limit", 9);

%>
<h1><%=dan%></h1>
<% for(int i = 1; i <= limit; i++) { %>
<div><%=dan%> * <%=i%> = <%=dan * i%></div>
<% } %>
</body>
</html>
