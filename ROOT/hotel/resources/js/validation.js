function checkHotelInfo(){
    if(!checkReservationString()){
        return false;
    }

    if(!checkStayLength()){
        return false;
    }

    if(!checkCustomerCode()){
        return false;
    }

    if(!checkStayCharge()){
        return false;
    }

    if(!checkUsageCharge()){
        return false;
    }

    if(!checkSaleCharge()){
        return false;
    }

    if(!checkPaymentCode()){
        return false;
    }

    if(!checkReservationTypeCode()){
        return false;
    }

    if(!checkRoomCode()){
        return false;
    }

    if(!checkSum()){
        return false;
    }

    document.newHotel.submit();
}

function checkCreateHotel(){
    if(!checkReservationNumber()){
        return false;
    }

    checkHotelInfo();
}

function checkReservationNumber(){
    const reservation_number = document.getElementById("reservationNumber");
    const reservationNumberRegExp = /^[0-9]{6}$/;
    const reservationNumberMsg = "[예약 번호]\n6자리 숫자만 가능합니다.";

    return regexpTest(reservation_number, reservationNumberRegExp, reservationNumberMsg);
}

function checkReservationString(){
    const reservation_string = document.getElementById("reservationString");
    const reservationStringRegExp = /^[a-zA-z0-9]{8}$/;
    const reservationStringMsg = "[예약 일자]\n8자리 문자만 가능합니다.";

    return regexpTest(reservation_string, reservationStringRegExp, reservationStringMsg);
}

function checkStayLength(){
    const stay_length = document.getElementById("stayLength");
    const stayLengthRegExp = /^[0-9]{1,2}$/;
    const stayLengthMsg = "[투숙 기간]\n2자리 숫자만 가능합니다.";

    return regexpTest(stay_length, stayLengthRegExp, stayLengthMsg);
}

function checkCustomerCode(){
    const customer_code = document.getElementById("customerCode");
    const customerCodeRegExp = /^[a-zA-z0-9]{2}$/;
    const customerCodeMsg = "[고객구분 코드]\n2자리 문자만 가능합니다.";

    return regexpTest(customer_code, customerCodeRegExp, customerCodeMsg);
}

function checkStayCharge(){
    const stay_charge = document.getElementById("stayCharge");
    const stayChargeRegExp = /^[0-9]{0,6}$/;
    const stayChargeMsg = "[숙박 요금]\n6자리 숫자만 가능합니다.";
    
    return regexpTest(stay_charge, stayChargeRegExp, stayChargeMsg);
}

function checkUsageCharge(){
    const usage_charge = document.getElementById("usageCharge");
    const usageChargeRegExp = /^[0-9]{0,5}$/;
    const usageChargeMsg = "[부대시설 이용요금]\n5자리 숫자만 가능합니다.";

    return regexpTest(usage_charge, usageChargeRegExp, usageChargeMsg);
}

function checkSaleCharge(){
    const sale_charge = document.getElementById("saleCharge");
    const saleChargeRegExp = /^[0-9]{0,5}$/;
    const saleChargeMsg = "[할인 금액]\n4자리 숫자만 가능합니다.";

    return regexpTest(sale_charge, saleChargeRegExp, saleChargeMsg);
}

function checkPaymentCode(){
    const payment_code = document.getElementById("paymentCode");
    const paymentCodeRegExp = /^[a-zA-z0-9]{2}$/;
    const paymentCodeMsg = "[지불 코드]\n2자리 문자만 가능합니다.";

    return regexpTest(payment_code, paymentCodeRegExp, paymentCodeMsg);
}

function checkReservationTypeCode(){
    const reservation_type_code = document.getElementById("reservationTypeCode");
    const reservationTypeCodeRegExp = /^[a-zA-z0-9]{2}$/;
    const reservationTypeCodeMsg = "[예약방법 코드]\n2자리 문자만 가능합니다.";

    return regexpTest(reservation_type_code, reservationTypeCodeRegExp, reservationTypeCodeMsg);
}

function checkRoomCode(){
    const room_code = document.getElementById("roomCode");
    const roomCodeRegExp = /^[a-zA-z0-9]{2}$/;
    const roomCodeMsg = "[예약실 구분코드]\n2자리 문자만 가능합니다.";

    return regexpTest(room_code, roomCodeRegExp, roomCodeMsg);
}

function checkSum(){
    const sum = document.getElementById("sum");
    const sumRegExp = /^[0-9]{0,5}$/;
    const sumMsg = "[누적 점수]\n5자리 숫자만 가능합니다.";

    return regexpTest(sum, sumRegExp, sumMsg);
}


function regexpTest(inputElement, regexp, errorMessage){
    if(!regexp.test(inputElement.value)){
        errorMeg(inputElement, errorMessage);
        return false;
    }

    return true;
}

function errorMeg(element, errorMessage){
    alert(errorMessage);
    element.select();
    element.focus();
}