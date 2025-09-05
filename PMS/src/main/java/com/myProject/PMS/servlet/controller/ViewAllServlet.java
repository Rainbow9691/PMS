package com.myProject.PMS.servlet.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myProject.PMS.servlet.Playerdao.PlayerDao;
import com.myProject.PMS.servlet.entity.Players;


@WebServlet("/viewall")
public class ViewAllServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Players> player = PlayerDao.findAll();
		
		req.setAttribute("playerslist", player);
		req.getRequestDispatcher("displayAllPlayers.jsp").forward(req, resp);
	}
	
}
