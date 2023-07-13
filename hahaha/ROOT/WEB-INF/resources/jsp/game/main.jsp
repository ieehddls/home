<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %> 

<html>

<head>
    <link rel="stylesheet" href="/static/grid.css">
    <link rel="stylesheet" href="/static/game.css">
    <script type="text/javascript" src="/static/js/baseBall.js"></script>
    <title>숫자 야구</title>
</head>

<body>
<div class="row">
    <div class="col-4 game-border">
        <div class="title">
            <h1>숫자 야구</h1>
        </div>
        <div class="answer">
            <% for(int i=0; i<3; i++){ %>
                <div class="answer-item"></div>
            <% }%>
        </div>
        <div class="result-div">
            <div class="result-grid flex-fill">
            <% for(int i = 0; i<9; i++){ %>
                <div class="result-item">
                </div>
                <% } %>
            </div>
        </div>

            <div class="input-grid">
                <% for(int i = 0; i<10; i++){ %>
                    <button type="button" class="btn btn-primary" onclick="numberBtnClick(this)"><%= i %></button>
                <% } %>
            </div>
    </div>

    <div id="account-div">
        계정 관련
        <button type="button" class="btn" onclick="cancel()">취소</button>
    </div>
</div>
</body>

</html>