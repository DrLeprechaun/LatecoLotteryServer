package com.lateco.lotteryserver.controllers;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.lateco.lotteryserver.db.entities.PlayerAmount;
import com.lateco.lotteryserver.db.entities.Players;
import com.lateco.lotteryserver.db.entities.RegularBets;
import com.lateco.lotteryserver.db.entities.RegularLottery;
import com.lateco.lotteryserver.entities.BasicResponse;
import com.lateco.lotteryserver.persistence.HibernateUtil;

@RestController
public class RegularBetsController {
	
	@ExceptionHandler
	@CrossOrigin
	@RequestMapping("/createRegularBet")
	public BasicResponse createRegularBet(@RequestParam(value="userId") long userId, @RequestParam(value="combination") int[] combination) {
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
    		session.beginTransaction();
    		
    		//Next lottery
    		 /*Query query = session.createQuery("from RegularLottery r where r.held is false order by r.date_planned desc").setMaxResults(1);
    		 RegularLottery rl = (RegularLottery) query.uniqueResult();*/
    		
    		/*Query query = session.createQuery("from RegularLottery r");
    		List<RegularLottery> rl = query.list();
    		System.out.println("" + rl.size());
    		System.out.println("is held: " + rl.get(0).getRegularLotteryIsHeld());*/
    		
    		RegularLottery rl = (RegularLottery) session.createCriteria(RegularLottery.class)
    				.add(Restrictions.eq("regularLotteryIsHeld", false))
    				.addOrder( Order.desc("regularLotteryDatePlanned"))
    				.setMaxResults(1)
    				.uniqueResult();
    		
    		//Проверять, если такой пользователь 
    		 
    		//Regular bet
    		RegularBets rb = new RegularBets(userId, rl.getRegularLotteryId(), combination);
    		session.save(rb);
    		
    		session.close();
		} catch (Exception e){
			e.printStackTrace();
		}
		return new BasicResponse("SUCCESS", "");
	}
    /*public BasicResponse createRegularBet(@RequestParam(value="userId") long userId, @RequestParam(value="combination") int[] combination) {
		
			List<RegularBets> list = new ArrayList<RegularBets>();
			try {
				Session session = HibernateUtil.getSessionFactory().openSession();
	    		session.beginTransaction();
	    		
	    		Query query = session.createQuery("from RegularBets b");
	    		list = query.list();
	    		
	    		session.close();
			} catch (Exception e){
				e.printStackTrace();
			}
			return new BasicResponse("SUCCESS", list.get(0).getRegularBetsCombination().toString()); 	
	}*/
	

}
