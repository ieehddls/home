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
            <h1 class="display-3">예약 등록</h1>
        </div>
    </div>
        <div class="container">
        <form name="newHotel" action="./processCreateHotel.jsp" class="form-horizontal" method="post">
            <div class="form-group row">
                <label class="col-sm-2">예약번호</label>
                <div class="col-sm-3">
                    <input type="number" id="reservationNumber" name="reservationNumber" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2">예약일자</label>
                <div class="col-sm-3">
                    <input type="text" id="reservationString" name="reservationString" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2">투숙 기간</label>
                <div class="col-sm-3">
                    <input type="number" id="stayLength" name="stayLength" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2">고객구분 코드</label>
                <div class="col-sm-3">
                    <input type="text" id="customerCode" name="customerCode" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2">숙박 요금</label>
                <div class="col-sm-3">
                    <input type="number" id="stayCharge" name="stayCharge" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2">부대시설 이용요금</label>
                <div class="col-sm-3">
                    <input type="number" id="usageCharge" name="usageCharge" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2">할인 금액</label>
                <div class="col-sm-3">
                    <input type="number" id="saleCharge" name="saleCharge" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2">지불코드</label>
                <div class="col-sm-3">
                    <input type="text" id="paymentCode" name="paymentCode" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2">예약방법 코드</label>
                <div class="col-sm-3">
                    <input type="text" id="reservationTypeCode" name="reservationTypeCode" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2">예약실 구분코드</label>
                <div class="col-sm-3">
                    <input type="text" id="roomCode" name="roomCode" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2">누적점수</label>
                <div class="col-sm-3">
                    <input type="number" id="sum" name="sum" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <div class="col-sm-offset-2 col-sm-10">
                    <input type="button" class="btn btn-primary" value="전송" onclick="checkCreateHotel()">
                </div>
            </div>
        </form>
    </div>
</body>

</html>