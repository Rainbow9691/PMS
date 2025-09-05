package com.myProject.PMS.servlet.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myProject.PMS.servlet.Playerdao.PlayerDao;
import com.myProject.PMS.servlet.entity.Players;

@WebServlet("/delete-by-id")
public class DeletePlayerByIdServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int playerId = Integer.parseInt(req.getParameter("playerid"));
		
		PlayerDao.deleteData(playerId);
		req.getRequestDispatcher("viewall").forward(req, resp);
	}
}
