package model;

public class GameDTO {
	private int g_game_number;
	private int g_problem_number_first;
	private int g_problem_number_second;
	private int g_problem_number_third;
	private String g_end;
	private String p_player_id;

	public String getP_player_id() {
		return this.p_player_id;
	}

	public void setP_player_id(String p_player_id) {
		this.p_player_id = p_player_id;
	}



	public int getG_game_number() {
		return this.g_game_number;
	}

	public void setG_game_number(int g_game_number) {
		this.g_game_number = g_game_number;
	}

	public int getG_problem_number_first() {
		return this.g_problem_number_first;
	}

	public void setG_problem_number_first(int g_problem_number_first) {
		this.g_problem_number_first = g_problem_number_first;
	}

	public int getG_problem_number_second() {
		return this.g_problem_number_second;
	}

	public void setG_problem_number_second(int g_problem_number_second) {
		this.g_problem_number_second = g_problem_number_second;
	}

	public int getG_problem_number_third() {
		return this.g_problem_number_third;
	}

	public void setG_problem_number_third(int g_problem_number_third) {
		this.g_problem_number_third = g_problem_number_third;
	}

		public String getG_end() {
		return this.g_end;
	}

	public void setG_end(String g_end) {
		this.g_end = g_end;
	}

	//g_end char(1)
}
