<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>
<%@ include file="util.jsp" %>

<%
    try{
        String id = request.getParameter("id");
        int hotelId = inputNumberToString(id);

        PreparedStatement pstmt = null;
        ResultSet rs = null;

        String sql = "select * from hotel";
        pstmt = conn.prepareStatement(sql);
        rs = pstmt.executeQuery();

        if(rs.next()){
            sql = "delete from hotel where h_reservation_number = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, hotelId);
            pstmt.executeUpdate();
        } else
            out.println("일치하는 호텔 예약이 없습니다.");

        if(rs != null)
            rs.close();
        if(pstmt != null)
            pstmt.close();
        if(conn != null)
            conn.close();

        response.sendRedirect("hotels.jsp");
    }catch(Exception e){
        response.sendRedirect("dbErrorPage.jsp");
    }
%>