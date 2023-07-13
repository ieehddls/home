<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<script type="text/javascript" src="./resources/js/searchEvent.js"></script>

<div class="container">
    <form name="searchForm" action="#" method="get" class="form-vertical">
            <div class="form-group row" style="padding-right:16px">
                <div>
                    <select id="searchSelect" name="searchKey" class="form-control" onchange="searchSelectChange()">
                        <%@ include file="searchSelectOption.jsp" %>
                    </select>
                </div>
                <div>    
                    <input type="number" id="searchValue" name="searchValue" class="form-control">
                </div>
                <div>  
                    <input type="submit" id="searchBtn" value="조회" class="btn btn-primary">
                </div>
            </div>
        </form>
</div>