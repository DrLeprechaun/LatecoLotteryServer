package com.lateco.lotteryserver.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
//import static javax.persistence.GenerationType.IDENTITY;
import static javax.persistence.GenerationType.SEQUENCE;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import java.lang.Integer;

//@Entity
//@Table(name = "mytest")
public class Mytest implements Serializable {
	
	//@Id
	//@GeneratedValue(strategy = SEQUENCE, generator = "mytest_mytest_id_seq")
	//@Column(name = "mytest_id")
	private Integer mytestId;
	
	//@Column(name = "mytest_name")
	private String mytestName;

	public Mytest() {
	}

	public Mytest(String mytestName) {
		this.mytestName = mytestName;
	}

	public Integer getMytestId() {
		return this.mytestId;
	}

	public void setMytestId(int mytestId) {
		this.mytestId = mytestId;
	}

	public String getMytestName() {
		return this.mytestName;
	}

	public void setMytestName(String mytestName) {
		this.mytestName = mytestName;
	}

}
