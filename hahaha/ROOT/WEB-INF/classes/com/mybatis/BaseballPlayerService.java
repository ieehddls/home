import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.model.PlayerDTO;



public class BaseballPlayerService {
    BaseballDAO dao = new BaseballDAO();

    public List<PlayerDTO> selectAll(){
        SqlSession session = MySqlSessionFactory.getSqlSession();
        List<PlayerDTO> list = null;
        try{
            list = dao.selectAllPlayer(session);
        }catch(Exception e){
            System.out.println("BaseballPlayerService ERROR : " + e.toString());
        }return list;
    }

    public void insertPlayer(PlayerDTO playerDTO){
        SqlSession session = MySqlSessionFactory.getSqlSession();
        try{
            dao.insertPlayer(session, playerDTO);
            session.commit();
        }catch(Exception e){
            System.out.println("BaseballPlayerService ERROR : " + e.toString());
        }
    }
}
