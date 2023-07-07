<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ page import="java.util.ArrayList" %>
<%@ include file="util.jsp" %>

<html>

<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script type="text/javascript" src="./resources/js/searchEvent.js"></script>
    <title>예약 관리</title>
    <script type="text/javascript">
        function deleteConfirm(id){
            const confirm_message = "해당 예약을 삭제합니다!";

            if(confirm(confirm_message) == true)
                location.href = "./processDeleteHotel.jsp?id=" + id;
            else
                return;
        }
    </script>
</head>

<body>
    <jsp:include page="header.jsp" />
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">예약 관리</h1>
        </div>
    </div>
    <div class="container">
    <%@ include file="editSearch.jsp" %>
        <div class="cow" align="center">
            <%@ include file="dbconn.jsp" %>
            <table border="1" id="hotelTable">
            <thead>
                <tr>
                    <jsp:include page="hotelTableHead.jsp" />
                    <th style="border : none;" ></th>
                </tr>
                </thead>
                <tbody class="tbody">
            <%
                try{
                    request.setCharacterEncoding("UTF-8");
                    String search_key = request.getParameter("searchKey");
                    String search_value = request.getParameter("searchValue");

                    PreparedStatement pstmt = null;
                    ResultSet rs = null;
                    String sql = "select * from hotel";

                    if(search_value != null && !search_value.equals("")){
                        sql += createSearchSQLQuery(search_key, search_value);
                    }

                    pstmt = conn.prepareStatement(sql);
                    rs = pstmt.executeQuery();
                    while(rs.next()){
			%>
            <tr>
                <td align="center"><%= rs.getString("h_reservation_number") %></td>
                <td align="center"><%= rs.getString("h_reservation_string") %></td>
                <td align="center"><%= rs.getString("h_stay_length") %></td>
                <td align="center"><%= rs.getString("h_customer_code") %></td>
                <td align="center"><%= rs.getString("h_stay_charge") %></td>
                <td align="center"><%= rs.getString("h_usage_charge") %></td>
                <td align="center"><%= rs.getString("h_sale_charge") %></td>
                <td align="center"><%= rs.getString("h_payment_code") %></td>
                <td align="center"><%= rs.getString("h_reservation_typeCode") %></td>
                <td align="center"><%= rs.getString("h_room_code") %></td>
                <td align="center"><%= rs.getString("h_total") %></td>
                <td align="center" style="border : none;">
                
                    <%
                        if(edit.equals("update")){
                    %>
                        <a href="./updateHotel.jsp?id=<%= rs.getString("h_reservation_number") %>" class="btn btn-success" role="button"> 수정 &raquo; </a>
                    <%
                        }else if(edit.equals("delete")){
                    %>
                        <a href="#" onclick="deleteConfirm('<%= rs.getString("h_reservation_number") %>')" class="btn btn-danger" role="button">
                            삭제 &raquo; </a>
                    <% } %>
                </td>
                
                <%
                    }
                    if(rs != null)
                        rs.close();
                    if(pstmt != null)
                        pstmt.close();
                    if(conn != null)
                        conn.close();
                }catch(Exception e){
                    response.sendRedirect("dbErrorPage.jsp");
                }
			%>
            </tbody>     
            </table>
        </div>
    </div>
</body>

</html>