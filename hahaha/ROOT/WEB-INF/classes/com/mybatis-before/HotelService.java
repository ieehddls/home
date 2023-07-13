import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class HotelService {

    HotelDAO dao = new HotelDAO();

    public List<HotelDTO> selectAll(){
        SqlSession session = MySqlSessionFactory.getSqlSession();
        List<HotelDTO> list = null;
        try{
            list = dao.selectAll(session);
        }catch(Exception e){
            System.out.println("HotelService error : " + e.toString());
        }return list;
    }
}
