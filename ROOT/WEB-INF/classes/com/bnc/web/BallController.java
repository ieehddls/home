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

		String first = request.getParameter("first");
		String second = request.getParameter("second");
		String third = request.getParameter("third");

		problemNumber = new int[]{Integer.parseInt(first), Integer.parseInt(second), Integer.parseInt(third)};

		BaseBall bb = new BaseBall();
		HashMap<String, Integer> map = bb.checkStrikeZone(answerNumber, problemNumber);

		request.setAttribute("ballCount", map);
		request.setAttribute("t", "asdf");

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/resources/jsp/game/ball.jsp");
		dispatcher.forward(request, response);
	}
}
