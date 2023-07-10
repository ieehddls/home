import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.GameDTO;
import model.PlayerDTO;
import model.ResultDTO;

public class BaseballDAO {
    private String game_mapper_str = "BaseballGameMapper.";
    private String player_mapper_str = "BaseballPlayerMapper.";
    private String result_mapper_str = "BaseballResultMapper.";

    /********** Game DB **********/
    public List<GameDTO> selectAllGame(SqlSession session){
        return session.selectList(game_mapper_str + "selectAll");
    }

    public GameDTO selectOneGame(SqlSession session, int game_id){
        return session.select(game_mapper_str + "selectOne", game_id);
    }

    public void insertGame(SqlSession session, GameDTO gameDTO){
        int num = session.insert(game_mapper_str + "insertGame", gameDTO);
        System.out.println("game 추가된 레코드 ====" + num);
    }

    /********** Player DB ***********/
    public List<PlayerDTO> selectAllPlayer(SqlSession session){
        return session.selectList(player_mapper_str + "selectAll");
    }

    public PlayerDTO selectOnePlayer(SqlSession session, int player_id){
        return session.selectList(player_mapper_str + "selectOne", player_id);
    }

    public void insertPlayer(SqlSession session, PlayerDTO playerDTO){
        int num = session.insert(player_mapper_str + "insertPlayer", playerDTO);
        System.out.println("player 추가된 레코드 ====" + num);
    }

    /********** Reuslt DB ***********/
    public List<ResultDTO> selectAllResult(SqlSession session){
        return session.selectList(result_mapper_str + "selectAllResult");
    }

    public ResultDTO selectOneResult(SqlSession session, Object params){
        return session.selectList(result_mapper_str + "selectAllResult", params);
    }

    public void insertResult(SqlSession session, ResultDTO resultDTO){
        int num = session.insert(result_mapper_str + "insertResult", resultDTO);
        System.out.println("player 추가된 레코드 ====" + num);
    }
}