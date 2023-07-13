import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.model.GameDTO;


public class BaseballGameService {
    BaseballDAO dao = new BaseballDAO();

    public List<GameDTO> selectAll(){
        SqlSession session = MySqlSessionFactory.getSqlSession();
        List<GameDTO> list = null;
        try{
            list = dao.selectAllGame(session);
        }catch(Exception e){
            System.out.println("BaseballGameService ERROR : " + e.toString());
        }return list;
    }

    public GameDTO selectPlayingGame(String player_id){
        SqlSession session = MySqlSessionFactory.getSqlSession();
        GameDTO dto = null;
        try{
            dto = dao.selectPlayingGame(session, player_id);
        }catch(Exception e){
            System.out.println("BaseballGameService ERROR : " + e.toString());
        }return dto;
    }

    public void insertGame(GameDTO gameDTO){
        SqlSession session = MySqlSessionFactory.getSqlSession();
        try{
            dao.insertGame(session, gameDTO);
            session.commit();
        }catch(Exception e){
            System.out.println("BaseballGameService ERROR : " + e.toString());
        }
    }
}
