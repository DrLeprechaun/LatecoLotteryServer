package com.lateco.lotteryserver.entities;

import java.util.List;

public class SimpleBet {
	
	private Long id;
	private int[] combination;
	
	public SimpleBet(Long id, int[] combination) {
		this.id = id;
		this.combination = combination;
	}
	
	public SimpleBet(Long id, List<Integer> combination) {
		this.id = id;
		this.combination = new int[combination.size()];
		for (int i = 0; i < combination.size(); i++) {
			this.combination[i] = combination.get(i).intValue();
		}
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public int[] getCombination() {
		return combination;
	}

	public void setCombination(int[] combination) {
		this.combination = combination;
	}
	
	

}
