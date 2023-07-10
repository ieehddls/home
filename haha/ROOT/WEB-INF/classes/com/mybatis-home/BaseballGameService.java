import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.GameDTO;

public class BaseballGameService {
    BaseballDAO dao = new BaseballDAO();

    public List<GameDTO> selectAll(){
        SqlSession session = MySqlSessionFactory.getSqlSession();
        List<GameDTO> list = null;
        try{
            list = dao.selectAll(session);
        }catch(Exception e){
            System.out.println("BaseballGameService ERROR : " + e.toString());
        }return list;
    }
}
