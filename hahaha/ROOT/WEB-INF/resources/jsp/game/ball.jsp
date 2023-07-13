<%@ page contentType="text/javascript; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.util.HashMap" %>
        <% 
        request.setCharacterEncoding("UTF-8");
        HashMap<String, Integer> ball_count = (HashMap)request.getAttribute("ballCount");

        out.println("{ \"S\" : " +ball_count.get("S") + 
                ", \"B\" : " + ball_count.get("B") + 
                ", \"first\" : " + ball_count.get("first") + 
                ", \"second\" : " + ball_count.get("second") +
                ", \"third\" :" + ball_count.get("third") + "}");
        %>