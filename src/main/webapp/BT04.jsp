<%-- 
    Document   : BT04
    Created on : Oct 17, 2024, 10:20:25 AM
    Author     : admin
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Đổi ngoại tệ</h1>
        <form action="BT04.jsp" method="post">
            <table border="0">

                <tr>
                    <td>Cho biết số tiền</td>
                    <td><input type="text" name="tien"><br></td>
                </tr>
                <tr>
                    <td>Chọn loại ngoại tệ</td>
                    <td><select name="loaitien">
                            <option value="USD">USD</option>
                            <option value="GBP">GBP</option>
                            <option value="EUR">EUR</option>
                            <option value="JPY">JPY</option>
                            <option value="AUD">AUD</option>
                        </select><br></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Đổi tiền">
                        <input type="submit" value="Tiếp tục" /></td>
                </tr>
            </table>
        </form>
        <%
            DecimalFormat df = new DecimalFormat("#,##0.##");
            String soTien = request.getParameter("tien");
            String loaiTien = request.getParameter("loaitien");
            if (soTien != null) {
                double sotien = Double.parseDouble(soTien);
                double tyGia = 0;
                switch (loaiTien) {
                    case "USD":
                        tyGia = 21380.00;
                        break;
                    case "GBP":
                        tyGia = 32622.80;
                        break;
                    case "EUR":
                        tyGia = 23555.67;
                        break;
                    case "JPY":
                        tyGia = 178.61;
                        break;
                    case "AUD":
                        tyGia = 16727.44;
                        break;
                }
                double ketQua = sotien * tyGia;
        %>
        <hr>
        Số tiền đổi được: <%=df.format(ketQua)%> đ
        <%
            }
        %>
    </body>
</html>
