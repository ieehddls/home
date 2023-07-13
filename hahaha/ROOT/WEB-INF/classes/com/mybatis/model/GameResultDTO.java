package com.bnc.web;

public class GameResultDTO {
	private int g_game_number;
	private int r_round;
	private int r_answer_first;
	private int r_answer_second;
	private int r_answer_third;

	public int getG_game_number() {
		return this.g_game_number;
	}

	public void setG_game_number(int g_game_number) {
		this.g_game_number = g_game_number;
	}

	public int getR_round() {
		return this.r_round;
	}

	public void setR_round(int r_round) {
		this.r_round = r_round;
	}

	public int getR_answer_first() {
		return this.r_answer_first;
	}

	public void setR_answer_first(int r_answer_first) {
		this.r_answer_first = r_answer_first;
	}

	public int getR_answer_second() {
		return this.r_answer_second;
	}

	public void setR_answer_second(int r_answer_second) {
		this.r_answer_second = r_answer_second;
	}

	public int getR_answer_third() {
		return this.r_answer_third;
	}

	public void setR_answer_third(int r_answer_third) {
		this.r_answer_third = r_answer_third;
	}

	//r_hit CHAR(1),

	//CONSTRAINT r_result_group_pk
}
