<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<script type="text/javascript" src="./resources/js/searchEvent.js"></script>

<%
    String edit = request.getParameter("edit");
%>

<%@ include file="search.jsp" %>

<script type="text/javascript">
    const search_form = document.searchForm;

    const input_edit = document.createElement("input");
    input_edit.setAttribute("type", "hidden");
    input_edit.setAttribute("name", "edit");
    input_edit.setAttribute("value", "<%= edit %>");

    search_form.appendChild(input_edit);
</script>
