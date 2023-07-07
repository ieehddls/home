<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>

<%@ include file="dbconn.jsp" %>
<%@ include file="util.jsp" %>
<%
    request.setCharacterEncoding("UTF-8");

    //입력값 받아오기
    String request_reservation_number = request.getParameter("reservationNumber");
    String request_reservation_string = request.getParameter("reservationString");
    String request_stay_length = request.getParameter("stayLength");
    String request_customer_code = request.getParameter("customerCode");
    String request_stay_charge = request.getParameter("stayCharge");
    String request_usage_charge = request.getParameter("usageCharge");
    String request_sale_charge = request.getParameter("saleCharge");
    String request_payment_code = request.getParameter("paymentCode");
    String request_reservation_type_code = request.getParameter("reservationTypeCode");
    String request_room_code = request.getParameter("roomCode");
    String request_sum = request.getParameter("sum");

    //처리
    int reservation_number = inputNumberToString(request_reservation_number);
    int stay_length = inputNumberToString(request_stay_length);
    int stay_charge = inputNumberToString(request_stay_charge);
    int usage_charge = inputNumberToString(request_usage_charge);
    int sale_charge = inputNumberToString(request_sale_charge);
    int sum = inputNumberToString(request_sum);

    //out.println(reservation_number + ", " + stay_length+ ", "+ stay_charge + ", "+usage_charge+ ", "+sale_charge+ ", "+sum);


    // out.println(reservation_number + reservation_string);
    // out.println(request.getParameter("num"));

//여기 위에서 처리하고, 아래처럼 db

    try{
        PreparedStatement pstmt = null;

        String sql = "insert into hotel values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        
        pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, reservation_number);
        pstmt.setString(2, request_reservation_string);
        pstmt.setInt(3, stay_length);
        pstmt.setString(4, request_customer_code);
        pstmt.setInt(5, stay_charge);
        pstmt.setInt(6, usage_charge);
        pstmt.setInt(7, sale_charge);
        pstmt.setString(8, request_payment_code);
        pstmt.setString(9, request_reservation_type_code);
        pstmt.setString(10, request_room_code);
        pstmt.setInt(11, sum);

    
        pstmt.executeUpdate();
        
        if(pstmt != null)
            pstmt.close();
        if(conn != null)
            conn.close();

        response.sendRedirect("hotels.jsp");
    }catch(Exception e){
        response.sendRedirect("dbErrorPage.jsp");
    }
    
%>