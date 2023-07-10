public class HotelDTO {
    private int reservation_number;
    private String reservation_string;
    private int stay_length;
    private String customer_code;
    private int stay_charge;
    private int usage_charge;
    private int sale_charge;
    private String payment_code;
    private String reservation_type_code;
    private String room_code;
    private int sum;

    public int getReservationNumber() {
        return this.reservation_number;
    }

    public void setReservationNumber(int reservation_number) {
        this.reservation_number = reservation_number;
    }

    public String getReservationString() {
        return this.reservation_string;
    }

    public void setReservationString(String reservation_string) {
        this.reservation_string = reservation_string;
    }

    public int getStayLength() {
        return this.stay_length;
    }

    public void setStayLength(int stay_length) {
        this.stay_length = stay_length;
    }

    public String getCustomerCode() {
        return this.customer_code;
    }

    public void setCustomerCode(String customer_code) {
        this.customer_code = customer_code;
    }

    public int getStayCharge() {
        return this.stay_charge;
    }

    public void setStayCharge(int stay_charge) {
        this.stay_charge = stay_charge;
    }

    public int getUsageCharge() {
        return this.usage_charge;
    }

    public void setUsageCharge(int usage_charge) {
        this.usage_charge = usage_charge;
    }

    public int getSaleCharge() {
        return this.sale_charge;
    }

    public void setSaleCharge(int sale_charge) {
        this.sale_charge = sale_charge;
    }

    public String getPaymentCode() {
        return this.payment_code;
    }

    public void setPaymentCode(String payment_code) {
        this.payment_code = payment_code;
    }

    public String getReservationTypeCode() {
        return this.reservation_type_code;
    }

    public void setReservationTypeCode(String reservation_type_code) {
        this.reservation_type_code = reservation_type_code;
    }

    public String getRoomCode() {
        return this.room_code;
    }

    public void setRoomCode(String room_code) {
        this.room_code = room_code;
    }

    public int getSum() {
        return this.sum;
    }

    public void setSum(int sum) {
        this.sum = sum;
    }

}
