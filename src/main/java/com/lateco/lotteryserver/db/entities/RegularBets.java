package com.lateco.lotteryserver.db.entities;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Arrays;
import java.sql.Array;
import java.util.stream.IntStream;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Table;
import org.hibernate.type.TimestampType;

import com.lateco.lotteryserver.postgresql.IntegerArrayType;
//import java.time.OffsetDateTime;
import java.util.Date;

@Entity
@Table(name = "regular_bets")
public class RegularBets implements Serializable{
	
	private Long regularBetsId;
	private Long regularBetsLotteryIdFk;
	private Long regularBetsUserIdFk;
	private List<Integer> regularBetsCombination;
	private Date regularBetsBetTimestamp;
	private Boolean regularBetsWin;
	
	public RegularBets (Long regularBetsId, Long regularBetsLotteryIdFk, Long regularBetsUserIdFk, List<Integer>regularBetsCombination, Date regularBetsBetTimestamp, Boolean regularBetsWin) {
		this.regularBetsId = regularBetsId;
		this.regularBetsLotteryIdFk = regularBetsLotteryIdFk;
		this.regularBetsUserIdFk = regularBetsUserIdFk;
		this.regularBetsCombination = regularBetsCombination;
		this.regularBetsBetTimestamp = regularBetsBetTimestamp;
		this.regularBetsWin = regularBetsWin;
	}
	
	public RegularBets() {}
	
	public RegularBets(long userId, int[] combination) {
		this.regularBetsLotteryIdFk = new Long(userId);
		this.regularBetsUserIdFk = new Long(1);
		this.regularBetsCombination = new ArrayList<Integer>();
		for (int i: combination) {
			this.regularBetsCombination.add(i);
		}
		this.regularBetsWin = false;
		this.regularBetsBetTimestamp = null;
	}
	
	public RegularBets(long userId, long lotteryId, int[] combination) {
		this.regularBetsLotteryIdFk = new Long(lotteryId);
		this.regularBetsUserIdFk = new Long(userId);
		this.regularBetsCombination = new ArrayList<Integer>();
		for (int i: combination) {
			this.regularBetsCombination.add(i);
		}
		this.regularBetsWin = false;
		this.regularBetsBetTimestamp = new Date();
	}

	public Long getRegularBetsId() {
		return regularBetsId;
	}

	public void setRegularBetsId(Long regularBetsId) {
		this.regularBetsId = regularBetsId;
	}

	public Long getRegularBetsLotteryIdFk() {
		return regularBetsLotteryIdFk;
	}

	public void setRegularBetsLotteryIdFk(Long regularBetsLotteryIdFk) {
		this.regularBetsLotteryIdFk = regularBetsLotteryIdFk;
	}

	public Long getRegularBetsUserIdFk() {
		return regularBetsUserIdFk;
	}

	public void setRegularBetsUserIdFk(Long regularBetsUserIdFk) {
		this.regularBetsUserIdFk = regularBetsUserIdFk;
	}

	public List<Integer> getRegularBetsCombination() {
		return regularBetsCombination;
	}

	public void setRegularBetsCombination(List<Integer>regularBetsCombination) {
		this.regularBetsCombination = regularBetsCombination;
	}

	public Date getRegularBetsBetTimestamp() {
		return regularBetsBetTimestamp;
	}

	public void setRegularBetsBetTimestamp(Date regularBetsBetTimestamp) {
		this.regularBetsBetTimestamp = regularBetsBetTimestamp;
	}

	public Boolean getRegularBetsWin() {
		return regularBetsWin;
	}

	public void setRegularBetsWin(Boolean regularBetsWin) {
		this.regularBetsWin = regularBetsWin;
	}
	
	

}
