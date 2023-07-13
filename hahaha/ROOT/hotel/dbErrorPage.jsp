<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ page import="java.util.ArrayList" %>
<%@ include file="util.jsp" %>

<html>

<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <title>호텔 예약</title>
</head>

<body>
    <jsp:include page="header.jsp" />
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">오류 발생</h1>
        </div>
    </div>
    <div class="container">
        <h2> 처리 중 오류가 발생했습니다. </h2>
        <a class="nav-link" href="./hotels.jsp">메인 화면으로 이동</a>
    </div>
</body>

</html>