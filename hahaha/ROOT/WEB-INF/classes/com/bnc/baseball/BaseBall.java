package com.bnc.baseball;

import java.util.HashMap;
import java.util.Random;

import com.mybatis.BaseballGameService;
import com.mybatis.model.GameDTO;

public class BaseBall {
    public HashMap<String, Integer> checkStrikeZone(int[] problemNumber, int[] answerNumber){
        HashMap<String, Integer> ballCount = new HashMap<>();
        ballCount.put("S",0);
        ballCount.put("B", 0);

        int length = answerNumber.length;

        for(int problem_index = 0; problem_index < length; problem_index++){
            for(int answer_index = 0; answer_index < length; answer_index++){
                if(problemNumber[problem_index] == answerNumber[answer_index]){
                    if(problem_index == answer_index) {
                        ballCount.put("S", ballCount.get("S") +1);
                    }
                    else {
                        ballCount.put("B", ballCount.get("B") +1);
                    }
                }
            }
        }

        return ballCount;
    }

    public int[] getProblemNumber(String player_id){
        //player_id로 현재 진행중인 게임 확인 후 없으면 새로 게임 만들어서 주고, 있으면 그 번호 가져다 주고
        BaseballGameService bgs = new BaseballGameService();
        GameDTO dto = bgs.selectPlayingGame(player_id);
        if(dto == null){
            return newGame();
        }else{
            int[] problem_number = {dto.getG_problem_number_first(), 
                dto.getG_problem_number_second(), dto.getG_problem_number_third()};
            return problem_number;
        }
    }

    private int[] newGame(){
        //번호 만들기 및 게임(db) 추가
        // 1. 번호만들기 createNewProblemNumber()
        // 2. DB createNewGameData();
        int[] random_number = new int[3];
        Random random = new Random();

        int index = 0;

        random_number[index] = random.nextInt(9);
        while(index == 2){
            int r = random.nextInt(9);
            if(random_number[index] == r) continue;
            else random_number[++index] = r;
        }

        return random_number;
    }
}
