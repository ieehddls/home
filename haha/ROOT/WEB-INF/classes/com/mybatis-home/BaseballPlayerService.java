import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.PlayerDTO;

public class BaseballPlayerService {
    BaseballDAO dao = new BaseballDAO();

    public List<PlayerDTO> selectAll(){
        SqlSession session = MySqlSessionFactory.getSqlSession();
        List<PlayerDTO> list = null;
        try{
            list = dao.selectAll(session);
        }catch(Exception e){
            System.out.println("BaseballPlayerService ERROR : " + e.toString());
        }return list;
    }
}
