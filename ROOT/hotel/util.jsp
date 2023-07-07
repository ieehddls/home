<%! 
    public int inputNumberToString(String inputNumberStr){
        int result;
        
        if(inputNumberStr.isEmpty())
            result = 0;
        else
            result = Integer.valueOf(inputNumberStr);
        
        return result;
    }

    public String createSearchSQLQuery(String inputSearchKey, String inputSearchValue){
        String input_type = "";
        String input_search_key = inputSearchKey;
        String input_search_value = inputSearchValue;

        switch (input_search_key) {
            case "h_reservation_number" : input_type = "number"; break;
            case "h_reservation_string" : input_type = "text"; break;
            case "h_stay_length" : input_type = "number"; break;
            case "h_customer_code" : input_type = "text"; break;
            case "h_stay_charge" : input_type = "number"; break;
            case "h_usage_charge" : input_type = "number"; break;
            case "h_sale_charge" : input_type = "number"; break;
            case "h_payment_code" : input_type = "text"; break;
            case "h_reservation_typeCode" : input_type = "text"; break;
            case "h_room_code" : input_type = "text"; break;
            case "h_total" : input_type = "number"; break;
        }

        String result = (input_type.equals("number"))? 
            " WHERE " + input_search_key + " = " + input_search_value :
            " WHERE UPPER(" + input_search_key + ") LIKE UPPER('" + input_search_value + "')";

        return result;
    }
%>