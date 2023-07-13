package com.bnc.web;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.annotation.WebServlet;
import javax.servlet.*;
import javax.servlet.http.*;

import com.bnc.baseball.BaseBall;

@WebServlet("/ball")
public class BallController extends HttpServlet{
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException{
		request.setCharacterEncoding("UTF-8");

		int first = Integer.parseInt(request.getParameter("first"));
		int second = Integer.parseInt(request.getParameter("second"));
		int third = Integer.parseInt(request.getParameter("third"));
		//String player_id = request.getParameter("playerID");


		BaseBall bb = new BaseBall();
		
		int[] answerNumber;
		//int[] problemNumber = bb.getProblemNumber(player_id);
		int[] problemNumber = {3, 7, 5};

		answerNumber = new int[]{first, second, third};
		HashMap<String, Integer> map = bb.checkStrikeZone(problemNumber, answerNumber);

		map.put("first", first);
		map.put("second", second);
		map.put("third", third);

		request.setAttribute("ballCount", map);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/resources/jsp/game/ball.jsp");
		dispatcher.forward(request, response);
	}
}
