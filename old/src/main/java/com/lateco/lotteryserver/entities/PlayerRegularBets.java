package com.lateco.lotteryserver.entities;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import com.lateco.lotteryserver.entities.SimpleBet;

public class PlayerRegularBets extends BasicResponse  {

	/*private final int[][] playerBets; 
	
	public PlayerRegularBets(String status, String description, ArrayList<List<Integer>> playerBets) {
		super.setStatus(status);
		super.setDescription(description);
		this.playerBets = new int[playerBets.size()][];
		for (int i = 0; i < playerBets.size(); i++) {
			int[] arr = new int[playerBets.get(i).size()];
			for (int j = 0; j < playerBets.get(i).size(); j++) {
				arr[j] = playerBets.get(i).get(j).intValue();
			}
			this.playerBets[i] = arr;	
		}
	}

	public int[][] getPlayerBets() {
		return playerBets;
	}*/
	
	private final SimpleBet[] playerBets;
	
	public PlayerRegularBets(String status, String description, ArrayList<SimpleBet> playerBets) {
		super.setStatus(status);
		super.setDescription(description);
		this.playerBets = new SimpleBet[playerBets.size()];
		for (int i = 0; i < playerBets.size(); i++) {
			this.playerBets[i] = playerBets.get(i);
		}
		
	}
	
	public SimpleBet[] getPlayerBets() {
		return playerBets;
	}
	
}
