function searchSelectChange(){
    const select = document.getElementById("searchSelect");
    const input_search = document.getElementById("searchValue");

    const select_value = select.options[select.selectedIndex].value;

    const input_type = {
        "h_reservation_number" : "number",
        "h_reservation_string" : "text",
        "h_stay_length" : "number",
        "h_customer_code" : "text",
        "h_stay_charge" : "number",
        "h_usage_charge" : "number",
        "h_sale_charge" : "number",
        "h_payment_code" : "text",
        "h_reservation_typeCode" : "text",
        "h_room_code" : "text",
        "h_total" : "number"
    };

    input_search.type = input_type[select_value];
}