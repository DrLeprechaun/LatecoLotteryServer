package com.lateco.lotteryserver.db.entities;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Table;

import java.util.ArrayList;
//import java.time.OffsetDateTime;
//import java.sql.Timestamp;
import java.util.Date;


@Entity
@Table(name = "regular_lottery")
public class RegularLottery implements Serializable {
	
	private Long regularLotteryId;
	private Date regularLotteryDatePlanned;
	private List<Integer> regularLotteryWinCombination;
	private Long regularLotteryWinnersNumber;
	private Date regularLotteryDateFact;
	private List<Integer> regularLotteryWinners;
	private java.lang.Boolean regularLotteryIsHeld;
	
	public RegularLottery(
			Long regularLotteryId, 
			Date regularLotteryDatePlanned,
			List<Integer> regularLotteryWinCombination,
			Long regularLotteryWinnersNumber,
			Date regularLotteryDateFact,
			List<Integer> regularLotteryWinners,
			Boolean regularLotteryIsHeld) {
		this.regularLotteryId = regularLotteryId;
		this.regularLotteryDatePlanned = regularLotteryDatePlanned;
		this.regularLotteryWinCombination = regularLotteryWinCombination;
		this.regularLotteryWinnersNumber = regularLotteryWinnersNumber;
		this.regularLotteryDateFact = regularLotteryDateFact;
		this.regularLotteryWinners = regularLotteryWinners;
		this.regularLotteryIsHeld = regularLotteryIsHeld;
	}
	
	public RegularLottery(Date datePlanned, Boolean isHeld) {
		this.regularLotteryDatePlanned = datePlanned;
		this.regularLotteryIsHeld = isHeld;
	}
	
	public RegularLottery() {}

	public Long getRegularLotteryId() {
		return regularLotteryId;
	}

	public void setRegularLotteryId(Long regularLotteryId) {
		this.regularLotteryId = regularLotteryId;
	}

	public Date getRegularLotteryDatePlanned() {
		return regularLotteryDatePlanned;
	}

	public void setRegularLotteryDatePlanned(Date regularLotteryDatePlanned) {
		this.regularLotteryDatePlanned = regularLotteryDatePlanned;
	}

	public List<Integer> getRegularLotteryWinCombination() {
		return regularLotteryWinCombination;
	}

	public void setRegularLotteryWinCombination(List<Integer> regularLotteryWinCombination) {
		this.regularLotteryWinCombination = regularLotteryWinCombination;
	}
	
	public void setRegularLotteryWinCombination(int[] regularLotteryWinCombination) {
		for (int i: regularLotteryWinCombination) {
			this.regularLotteryWinCombination.add(i);
		}
	}

	public Long getRegularLotteryWinnersNumber() {
		return regularLotteryWinnersNumber;
	}

	public void setRegularLotteryWinnersNumber(Long regularLotteryWinnersNumber) {
		this.regularLotteryWinnersNumber = regularLotteryWinnersNumber;
	}

	public Date getRegularLotteryDateFact() {
		return regularLotteryDateFact;
	}

	public void setRegularLotteryDateFact(Date regularLotteryDateFact) {
		this.regularLotteryDateFact = regularLotteryDateFact;
	}

	public List<Integer> getRegularLotteryWinners() {
		return regularLotteryWinners;
	}

	public void setRegularLotteryWinners(List<Integer> regularLotteryWinners) {
		this.regularLotteryWinners = regularLotteryWinners;
	}

	public java.lang.Boolean getRegularLotteryIsHeld() {
		return regularLotteryIsHeld;
	}

	public void setRegularLotteryIsHeld(Boolean regularLotteryIsHeld) {
		this.regularLotteryIsHeld = regularLotteryIsHeld;
	}

}
