package com.bnc.web;

import java.io.IOException;
import java.io.PrintWriter;
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

		int[] answerNumber = {1,2,3};
		int[] problemNumber;

		int first = Integer.parseInt(request.getParameter("first"));
		int second = Integer.parseInt(request.getParameter("second"));
		int third = Integer.parseInt(request.getParameter("third"));

		problemNumber = new int[]{first, second, third};

		BaseBall bb = new BaseBall();
		HashMap<String, Integer> map = bb.checkStrikeZone(answerNumber, problemNumber);

		map.put("first", first);
		map.put("second", second);
		map.put("third", third);

		request.setAttribute("ballCount", map);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/resources/jsp/game/ball.jsp");
		dispatcher.forward(request, response);
	}
}
