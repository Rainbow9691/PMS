package com.myProject.PMS.servlet.Playerdao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.myProject.PMS.servlet.entity.Players;

public class PlayerDao {
	static  EntityManagerFactory emf = Persistence.createEntityManagerFactory("mysql-config");
	public static void addPlayer(Players p) {

		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.persist(p);
		et.commit();
		em.close();
		
	}
	public static List<Players> findAll() {
		EntityManager em = emf.createEntityManager();
		Query query = em.createQuery("from Players");
		List<Players> players = query.getResultList();
		em.close();
		
		return players ;
	}
	public static void updatePlayer(Players player) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.merge(player);
		et.commit();
		em.close();
	}
	public static Players fetchData(int playerId) {
		EntityManager em = emf.createEntityManager();
		Players player = em.find(Players.class, playerId);
		em.close();
		return player ;
		
	}
	public static void deleteData(int playerId) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		Players player = em.find(Players.class,playerId);
		et.begin();
		em.remove(player);
		et.commit();
		em.close();
	}

}
