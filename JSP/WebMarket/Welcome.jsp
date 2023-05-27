<%@ page session="false" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ page import ="java.util.Date" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv = "Refresh" cotent = "1">
</head>

<body>
    <h1>Welcome to Web Shopping Mall</h1>
    Welcome to Web Market!
    <%
    response.setHeader("Refresh", "1");
    Date day = new java.util.Date();
    String am_pm, CT;
    int hour, minute, second;
    int i = 0;
        hour = day.getHours();
        minute = day.getMinutes();
        second = day.getSeconds();
    if(hour / 12 == 0){
        am_pm = "AM";
    }else{
        am_pm = "PM";
        hour = hour - 12;
    }
    CT = hour + ":" + minute + ":"+ second + " " + am_pm;
    out.println(": " + CT + "");
    %>
</body>

</html>