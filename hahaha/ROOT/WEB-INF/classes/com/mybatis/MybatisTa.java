public class MybatisTa{
    public static void main(String[] args) {
        //BaseballGameService bg = new BaseballGameService();
        //BaseballPlayerService pg = new BaseballPlayerService();

        // GameDTO dto = new GameDTO();
        // dto.setG_game_number(0);
        // dto.setG_problem_number_first(0);
        // dto.setG_problem_number_second(1);
        // dto.setG_problem_number_third(2);
        // dto.setG_end("0");
        // dto.setP_player_id("123");

        // bg.insertGame(dto);

        // PlayerDTO dto = new PlayerDTO();
        // dto.setP_player_id("321");
        // pg.insertPlayer(dto);

        System.out.println(MySqlSessionFactory.getSqlSession());
    }
    
}