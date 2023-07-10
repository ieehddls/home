public class MybatisT {
    public static void main(String[] args) {
        HotelService hs = new HotelService();
        System.out.println(hs.selectAll());
    }
}