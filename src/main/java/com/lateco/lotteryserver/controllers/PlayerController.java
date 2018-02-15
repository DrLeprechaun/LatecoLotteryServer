package com.lateco.lotteryserver.controllers;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.lateco.lotteryserver.db.entities.PlayerAmount;
import com.lateco.lotteryserver.db.entities.Players;
import com.lateco.lotteryserver.persistence.HibernateUtil;

@RestController
public class PlayerController {
	
	@ExceptionHandler
	@CrossOrigin
	@RequestMapping("/getAmount")
    public PlayerAmount getAmount(@RequestParam(value="id") long id) {
		
		List<Players> list = new ArrayList<Players>();
		
		try {
    		Session session = HibernateUtil.getSessionFactory().openSession();
    		session.beginTransaction();
    	
    		Query query = session.createQuery("from Players p where p.id=" + id);
    		list = query.list();
    		session.close();
    		} catch (Exception e) {
    			e.printStackTrace();
    			AppErrorController.description = e.toString()+ ":" + e.getMessage();
    		}
			return new PlayerAmount("SUCCESS", "", list.get(0).getPlayersId(), list.get(0).getPlayersAmount()); 	
	}

}
