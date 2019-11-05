<%@ page import="java.util.ArrayList" %>
<%@ page import="Entity.Reader" %>
<%@ page import="java.lang.Integer" %>

<%--
  Created by IntelliJ IDEA.
  User: Creams
  Date: 2018/1/23
  Time: 21:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<html>
<%
    request.setCharacterEncoding("utf-8");
    response.setContentType("text/html;charset=utf-8");
    if(session.getAttribute("adminname") == null) {
        response.sendRedirect("/Library/index.jsp");
    }
    ArrayList<Reader> readerlist = (ArrayList<Reader>)session.getAttribute("readerlist");
%>
<%
     String flag = (String)session.getAttribute("msg");
    if ("1".equals(flag)) {
%>
<script>
    alert("挂失成功！");
</script>
<%

    } else if ("2".equals(flag)) {
%>
<script>
    alert("注销成功！");
</script>
<%} else if ("3".equals(flag)) {
%>
<script>
    alert("修改成功！");
</script>

    <%}
    session.removeAttribute("msg");
%>

<head>
    <title>读者列表</title>
</head>
<body>
<div class="black" align="center">
    <img src="./image/head2.png" >
</div>
<jsp:include page="nav.html"/>
<div class="hei">
<table class="table">
    <thead>
    <tr>
        <th>读者ID</th>
        <th>读者姓名</th>
        <th>读者性别</th>
        <th>读者当前状态</th>
        <th>读者邮箱</th>
        <th>读者电话</th>
        <th>读者班级</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <%
        String status = null;
        String edit = null;
        if(readerlist!=null && readerlist.size() > 0)
        {
            for (int i = 0; i < readerlist.size(); i++)
            {
                Reader reader = readerlist.get(i);
    %>
    <tr>
        <td><%=reader.getUsername()%></td>
        <td><%=reader.getName()%></td>
        <td><%=reader.getSex()%></td>
        <%
            if (reader.getStatus() == 1) {
                status = "正常";
                edit = "加入黑名单";
            } else if (reader.getStatus() == -1) {
                status = "黑名单";
                edit = "设置为正常";
            } else if (reader.getStatus() == 0) {
                status = "已挂失";
                edit = "设置为正常";
            }


            edit = (reader.getStatus() == 1)?"设置成黑名单":"设置为正常";
        %>
        <td><%=status%></td>
        <td><%=reader.getMail()%></td>
        <td><%=reader.getTel()%></td>
        <td><%=reader.getGrade()%>年级<%=reader.getClassnum()%>班</td>
        <td><a href="ReaderAction?action=SetBlackList&id=<%=reader.getUsername()%>&edit=<%=edit%>"><%=edit%></a></td>
        <td><a href="ReaderAction?action=DeleteReader&username=<%=reader.getUsername()%>">注销</a></td>
        <%if (reader.getStatus() != 0) {%>
        <td><a href="ReaderAction?action=AddLoss&username=<%=reader.getUsername()%>">挂失</a></td>
        <%}%>
    </tr>
    <%
            }
        }
    %>
    </tbody>
</table>
</div>

<jsp:include page="foot.html"/>
</body>
</html>
