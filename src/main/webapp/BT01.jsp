<%-- 
    Document   : BT01
    Created on : Oct 17, 2024, 10:17:17 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Chương trình đầu tiên</h1>
        <hr>
        <form action="BT01.jsp" method="POST">
            Cho biết họ tên <input type="text" name="hoten" value="" />
            <input type="submit" value="Thi hành" />
        </form>
        
        <%
            request.setCharacterEncoding("UTF-8");
            String hoten=request.getParameter("hoten");
            if(hoten !=null){
        %>
        Chào bạn :<b> <%= hoten%>
        <% }%>
    </body>
</html>