package com.bnc.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.*;
import javax.servlet.http.*;

@WebServlet("/game")
public class GameController extends HttpServlet{
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException{
		request.setCharacterEncoding("UTF-8");

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/resources/jsp/game/main.jsp");
		dispatcher.forward(request, response);
	}
}
