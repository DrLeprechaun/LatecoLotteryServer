package com.lateco.lotteryserver.controllers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.lateco.lotteryserver.db.entities.Players;
import com.lateco.lotteryserver.db.entities.RegularBets;
import com.lateco.lotteryserver.db.entities.RegularLottery;
import com.lateco.lotteryserver.entities.BasicResponse;
import com.lateco.lotteryserver.entities.PlayerAmount;
import com.lateco.lotteryserver.entities.PlayerRegularBets;
import com.lateco.lotteryserver.persistence.HibernateUtil;

import com.lateco.lotteryserver.entities.SimpleBet;

@RestController
public class PlayerController {
	
	@ExceptionHandler
	@CrossOrigin
	@RequestMapping("/getAmount")
    public PlayerAmount getAmount(@RequestParam(value="id") long id) {
		
		List<Players> list = new ArrayList<Players>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		
		try {
    		Transaction tx = session.beginTransaction();
    	
    		Query query = session.createQuery("from Players p where p.id=" + id);
    		list = query.list();
    		
    		tx.commit();
    		} catch (Exception e) {
    			e.printStackTrace();
    			AppErrorController.description = e.toString()+ ":" + e.getMessage();
    		} finally {
    			session.close();
    		}
			return new PlayerAmount("SUCCESS", "", list.get(0).getPlayersId(), list.get(0).getPlayersAmount()); 	
	}
	
	@ExceptionHandler
	@CrossOrigin
	@RequestMapping("/getPlayerRegularBets")
    public PlayerRegularBets getPlayerRegularBets(@RequestParam(value="userId") long userId) {
		
		ArrayList<SimpleBet> list = new ArrayList<SimpleBet>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		
		try {
    		Transaction tx = session.beginTransaction();
    	
    		List<RegularBets> rbList = session.createCriteria(RegularBets.class)
    				.add(Restrictions.eq("regularBetsUserIdFk", userId))
    				.addOrder(Order.asc("regularBetsId"))
    				.list();
    		
    		tx.commit();
    		
    		for (RegularBets rb: rbList) {
    			list.add(new SimpleBet(rb.getRegularBetsId(), rb.getRegularBetsCombination()));
    		}
    		
    		} catch (Exception e) {
    			e.printStackTrace();
    			AppErrorController.description = e.toString()+ ":" + e.getMessage();
    		} finally {
    			session.close();
    		}
			return new PlayerRegularBets("SUCCESS", "", list); 	
	}
	
	/*@ExceptionHandler
	@CrossOrigin
	@RequestMapping("/getPlayerCurrentRegularBets")
    public PlayerRegularBets getPlayerCurrentRegularBets(@RequestParam(value="userId") long userId) {
		
		ArrayList<List<Integer>> list = new ArrayList<List<Integer>>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		
		try {
    		Transaction tx = session.beginTransaction();
    	
    		List<RegularBets> rbList = session.createCriteria(RegularBets.class)
    				.add(Restrictions.eq("regularBetsUserIdFk", userId))
    				.addOrder(Order.asc("regularBetsId"))
    				.list();
    		
    		tx.commit();
    		
    		for (RegularBets rb: rbList) {
    			list.add(rb.getRegularBetsCombination());
    		}
    		
    		} catch (Exception e) {
    			e.printStackTrace();
    			AppErrorController.description = e.toString()+ ":" + e.getMessage();
    		} finally {
    			session.close();
    		}
			return new PlayerRegularBets("SUCCESS", "", list); 	
	}*/

}
