package com.lateco.lotteryserver.controllers;

import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.lateco.lotteryserver.entities.Greeting;
import com.lateco.lotteryserver.entities.Mytest;
import com.lateco.lotteryserver.entities.Users;

import org.hibernate.Query;
import org.hibernate.Session;
import com.lateco.lotteryserver.persistence.HibernateUtil;

@RestController
public class GreetingController {
	
    private static final String template = "Hello, %s!";
    private final AtomicLong counter = new AtomicLong();

    @RequestMapping("/greeting")
    public Greeting greeting(@RequestParam(value="name", defaultValue="World") String name) {
    	
    	try {
    		Session session = HibernateUtil.getSessionFactory().openSession();
    		session.beginTransaction();
    	
    		Query query = session.createQuery("from Mytest m");
    		List<Mytest> list = query.list();
    		System.out.println(list.get(0).getMytestName());
    		session.close();
    	} catch (Exception e) {
    		e.printStackTrace();
    	}
    	
        return new Greeting(counter.incrementAndGet(),
                            String.format(template, name));
    }
}
