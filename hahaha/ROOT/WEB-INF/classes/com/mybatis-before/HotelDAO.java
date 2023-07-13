import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class HotelDAO {
    public List<HotelDTO> selectAll(SqlSession session){
        return session.selectList("HotelMapper.selectAllHotel");
    }
}
