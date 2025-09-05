package com.myProject.PMS.servlet.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myProject.PMS.servlet.Playerdao.PlayerDao;
import com.myProject.PMS.servlet.entity.Players;

@WebServlet("/addplayer")
public class addPlayer extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String title = req.getParameter("title");
		int age = Integer.parseInt(req.getParameter("age"));
		long salary = Long.parseLong(req.getParameter("salary"));
		String team = req.getParameter("team");
		String nationality = req.getParameter("nationality");
		
		Players p = new Players();
		p.setTitle(title);
		p.setAge(age);
		p.setSalary(salary);
		p.setTeam(team);
		p.setNationality(nationality);
		
		PlayerDao.addPlayer(p);
		resp.sendRedirect("index.jsp");
		
	}
}
