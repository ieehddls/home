<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<html>

<head>
        <title>호텔 예약 추가</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script type="text/javascript" src="./resources/js/validation.js"></script>
</head>

<body>
    <jsp:include page="header.jsp" />
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">예약 수정</h1>
        </div>
    </div>
    <%@ include file="dbconn.jsp" %>
    <%
        String h_id = request.getParameter("id");

        PreparedStatement pstmt = null;
        ResultSet rs = null;

        String sql = "select * from hotel where H_RESERVATION_NUMBER = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, h_id);
        rs = pstmt.executeQuery();
        if(rs.next()){
    %>
    
    <div class="container">
        <form name="newHotel" action="./processUpdateHotel.jsp" class="form-horizontal" method="post">
            <div class="form-group row">
                <label class="col-sm-2">예약번호</label>
                <div class="col-sm-3">
                    <% out.println(request.getParameter("id")); %>
                </div>
                <input type="hidden" id="reservationNumber" name="reservationNumber" value="<%= rs.getString("h_reservation_number") %>" class="form-control">
            </div>

            <div class="form-group row">
                <label class="col-sm-2">예약일자</label>
                <div class="col-sm-3">
                    <input type="text" id="reservationString" name="reservationString" value="<%= rs.getString("h_reservation_string") %>" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2">투숙 기간</label>
                <div class="col-sm-3">
                    <input type="number" id="stayLength" name="stayLength" value="<%= rs.getString("h_stay_length") %>" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2">고객구분 코드</label>
                <div class="col-sm-3">
                    <input type="text" id="customerCode" name="customerCode" value="<%= rs.getString("h_customer_code") %>" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2">숙박 요금</label>
                <div class="col-sm-3">
                    <input type="number" id="stayCharge" name="stayCharge" value="<%= rs.getString("h_stay_charge") %>" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2">부대시설 이용요금</label>
                <div class="col-sm-3">
                    <input type="number" id="usageCharge" name="usageCharge" value="<%= rs.getString("h_usage_charge") %>" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2">할인 금액</label>
                <div class="col-sm-3">
                    <input type="number" id="saleCharge" name="saleCharge" value="<%= rs.getString("h_sale_charge") %>" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2">지불코드</label>
                <div class="col-sm-3">
                    <input type="text" id="paymentCode" name="paymentCode" value="<%= rs.getString("h_payment_code") %>" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2">예약방법 코드</label>
                <div class="col-sm-3">
                    <input type="text" id="reservationTypeCode" name="reservationTypeCode" value="<%= rs.getString("h_reservation_typeCode") %>" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2">예약실 구분코드</label>
                <div class="col-sm-3">
                    <input type="text" id="roomCode" name="roomCode" value="<%= rs.getString("h_room_code") %>" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2">누적점수</label>
                <div class="col-sm-3">
                    <input type="number" id="sum" name="sum" value="<%= rs.getString("h_total") %>" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <div class="col-sm-offset-2 col-sm-10">
                    <input type="button" class="btn btn-primary" value="전송" onclick="checkHotelInfo()">
                </div>
            </div>
        </form>
    </div>
    <%
}

if(rs != null)
    rs.close();
if(pstmt != null)
    pstmt.close();
if(conn != null)
    conn.close();
%>
</body>

</html>