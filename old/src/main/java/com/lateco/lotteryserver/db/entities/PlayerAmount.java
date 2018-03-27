package com.lateco.lotteryserver.db.entities;

import java.math.BigDecimal;

import com.lateco.lotteryserver.entities.BasicResponse;

public class PlayerAmount extends BasicResponse  {
	
	private final long id;
	private final BigDecimal amount;
	
	public PlayerAmount(String status, String description, long id, BigDecimal amount) {
		super.setStatus(status);
		super.setDescription(description);
		this.id = id;
		this.amount = amount;
	}
	
	public long getId() {
		return this.id;
	}
	
	public BigDecimal getAmount() {
		return this.amount;
	}

}
