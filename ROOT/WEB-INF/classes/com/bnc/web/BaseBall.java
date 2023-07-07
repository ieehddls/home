package com.bnc.baseball;

import java.util.HashMap;

public class BaseBall {
    public HashMap<String, Integer> checkStrikeZone(int[] answerNumber, int[] problemNumber){
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
}
