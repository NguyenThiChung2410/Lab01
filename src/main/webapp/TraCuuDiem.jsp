<%-- 
    Document   : TraCuuDiem
    Created on : Oct 17, 2024, 10:24:21 AM
    Author     : admin
--%>

<%@page import="common.Database"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tra cứu điểm</h1>
        <form action="TraCuuDiem.jsp" method="POST">
            Số báo danh <input type="text" name="sobd" value="" />
            Họ tên <input type="text" name="hoten" value="" />
            <button type="submit">Tra cứu</button>
        </form>
        <%
            request.setCharacterEncoding("UTF8");
            String sbd=request.getParameter("sobd");
            String hoten=request.getParameter("hoten");
            if(sbd !=null || hoten !=null){
            Connection conn=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            try{
            conn=Database.getConnection();
            if(sbd!=null && sbd.isEmpty()){
            ps=conn.prepareStatement("select*from thisinh where sobd=?");
            ps.setString(1, sbd);
            }else{
            ps=conn.prepareStatement("select*from thisinh where hoten like ?");
            ps.setString(1,"%" +hoten + "%");
            }
            rs=ps.executeQuery();
            }catch(Exception e){
            out.println("Loi: "+e.toString());
            }
            
        %>
        <table border="1">
            <tr>
                <th>Số báo danh</th>
                <th>Họ tên</th>
                <th>Địa chỉ</th>
                <th>Điểm toán</th>
                <th>Điểm Lý</th>
                <th>Điểm hóa</th>
                <th>Tổng điểm</th>
            </tr>
            <%
            while(rs.next()){
            double tongDiem=rs.getFloat(4) + rs.getFloat(5) + rs.getFloat(6);
            %>
            <tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getFloat(4)%></td>
                <td><%=rs.getFloat(5)%></td>
                <td><%=rs.getFloat(6)%></td>
                <td><%=tongDiem%></td>
            </tr>
            <% } %>
        </table>
        <% } %>
    </body>
</html>
