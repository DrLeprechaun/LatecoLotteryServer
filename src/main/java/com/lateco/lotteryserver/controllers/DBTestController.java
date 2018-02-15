package com.lateco.lotteryserver.controllers;

import java.math.BigDecimal;
import java.util.ArrayList;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.lateco.lotteryserver.db.entities.RegularBets;
import com.lateco.lotteryserver.db.entities.RegularLottery;
import com.lateco.lotteryserver.entities.BasicResponse;
import com.lateco.lotteryserver.persistence.HibernateUtil;

import com.lateco.lotteryserver.SequenceGeneration;
import java.util.Date;
import org.hibernate.Transaction;

import com.lateco.lotteryserver.db.entities.Players;

@RestController
public class DBTestController {
	
	@ExceptionHandler
	@CrossOrigin
	@RequestMapping("/testNewLottery")
	public BasicResponse testNewLottery() {
		
		//Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Session session = HibernateUtil.getSessionFactory().openSession();
		
		try {
    		//Transaction tx = (Transaction) session.beginTransaction();
			Transaction tx = session.beginTransaction();
    		
    		//1. Взять текущую лотерею
    		RegularLottery rl = (RegularLottery) session.createCriteria(RegularLottery.class)
    				.add(Restrictions.eq("regularLotteryIsHeld", false))
    				.addOrder( Order.desc("regularLotteryDatePlanned"))
    				.setMaxResults(1).uniqueResult();
    		System.out.println(rl.getRegularLotteryIsHeld().toString());
    		
    		//2. Определить выигрышную комбинацию
    		int[] winCombination = SequenceGeneration.randomSequence();
    		System.out.println(winCombination.toString());
    		//rl.setRegularLotteryWinCombination(winCombination);
    		//3. Определить участников
    		//4. Определить победителей и их количество
    		//5. Поделить деньги (если есть победители; если нет - в джекпот)
    		//6. Закрыть текущую лотерею
    		/*Query query = session.createQuery("from Players p where p.id=1");
    		Players player = (Players) query.uniqueResult();
    		player.setPlayersAmount(new BigDecimal(300));
    		session.update(player);
    		session.flush();*/

    		//session.createSQLQuery("UPDATE players SET amount = 100");
    		
    		/*Query query = session.createQuery("update Players set playersAmount = 20 WHERE playersId = 1");
    		int result = query.executeUpdate();*/
    		
    		
    		
    		/*rl.setRegularLotteryIsHeld(true);
    		rl.setRegularLotteryWinCombination(winCombination);
    		session.update(rl);*/
    		
    		Query query = session.createQuery("update RegularLottery set regularLotteryIsHeld = true, regularLotteryWinCombination = " + SequenceGeneration.lotterySequenceToString(winCombination) + " WHERE regularLotteryId = " + rl.getRegularLotteryId());
    		int result = query.executeUpdate();
    		
    		
    		//RegularLottery cat = (RegularLottery) session.load(RegularLottery.class, rl.getRegularLotteryId());
    		//cat.setRegularLotteryWinCombination(winCombination);
    		//cat.setRegularLotteryIsHeld(new Boolean(false));
    		//session.flush();
    		//session.flush();
    		
    		//7. Открыть новую лотерею
    		//Date currentDate = new Date();
    		//Date plannedDate = new Date();
    		//plannedDate.setHours(currentDate.getHours() + 1);
    		//RegularLottery newRl = new RegularLottery(plannedDate, false);
    		//session.save(newRl);
    		
    		tx.commit();

		} catch (Exception e){
			e.printStackTrace();
		}
		finally {
			session.close();
		}
		return new BasicResponse("SUCCESS", "");
	}

}
