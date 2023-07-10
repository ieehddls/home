import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.ResultDTO;

public class BaseballResultService {
    BaseballDAO dao = new BaseballDAO();

    public List<ResultDTO> selectAll(){
        SqlSession session = MySqlSessionFactory.getSqlSession();
        List<ResultDTO> list = null;
        try{
            list = dao.selectAll(session);
        }catch(Exception e){
            System.out.println("BaseballResultService ERROR : " + e.toString());
        }return list;
    }
}
