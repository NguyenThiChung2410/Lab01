<%-- 
    Document   : BT03
    Created on : Oct 17, 2024, 10:19:53 AM
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
        <h1>Diện tích-Chu vi hình tròn</h1>
        <hr>
        <form action="BT03.jsp" method="POST">
            Nhập bán kính: <input type="text" name="bk"><br><br>
            <input type="submit" value="Tính toán">
            <input type="reset" value="Tiếp tục" />
        </form>
        <%
            String bankinh = request.getParameter("bk");
            double cv;
            double dt;
            if(bankinh!=null){
            double bk = Double.parseDouble(bankinh);
            cv= Math.PI*2*bk;
            dt=Math.PI *bk*bk;
          
        %>
        <hr>
        Chu vi :<%=cv%><br>
        Diện tích :<%=dt%>
        <%
            }
        %>
    </body>
</html>