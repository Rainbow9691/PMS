package com.myProject.PMS.servlet.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myProject.PMS.servlet.Playerdao.PlayerDao;
import com.myProject.PMS.servlet.entity.Players;

@WebServlet("/find-by-id")
public class FindPlayerByIdServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int playerId = Integer.parseInt(req.getParameter("playerid"));
		
		Players player = PlayerDao.fetchData(playerId);
		
		req.setAttribute("player", player);
		req.getRequestDispatcher("updateplayer.jsp").forward(req, resp);
	}
}
