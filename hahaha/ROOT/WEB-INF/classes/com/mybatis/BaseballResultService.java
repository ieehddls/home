package com.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.model.GameResultDTO;

public class BaseballResultService {
    BaseballDAO dao = new BaseballDAO();

    public List<GameResultDTO> selectAll(){
        SqlSession session = MySqlSessionFactory.getSqlSession();
        List<GameResultDTO> list = null;
        try{
            list = dao.selectAllResult(session);
        }catch(Exception e){
            System.out.println("BaseballResultService ERROR : " + e.toString());
        }return list;
    }
}
