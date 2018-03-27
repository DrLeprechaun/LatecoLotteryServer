package com.lateco.lotteryserver.db.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
//import static javax.persistence.GenerationType.IDENTITY;
import static javax.persistence.GenerationType.SEQUENCE;
import java.io.Serializable;
import java.math.BigDecimal;

import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;


@Entity
@Table(name = "players")
public class Players implements Serializable {
	
	private Long playersId;
	private String playersPlayerName;
	private String playersFirstName;
	private String playersLastName;
	private BigDecimal playersAmount;
	
	public Players(Long playersId, String playersPlayerName, String playersFirstName, String playersLastName, BigDecimal playersAmount) {
		this.playersId = playersId;
		this.playersPlayerName = playersPlayerName;
		this.playersFirstName = playersFirstName;
		this.playersLastName = playersLastName;
		this.playersAmount = playersAmount;
	}
	
	public Players() {}
	
	@Id
	@Column(name = "id", unique = true, nullable = false)
	public Long getPlayersId() {
		return playersId;
	}
	public void setPlayersId(Long playersId) {
		this.playersId = playersId;
	}
	@Column(name = "player_name")
	public String getPlayersPlayerName() {
		return playersPlayerName;
	}
	public void setPlayersPlayerName(String playersPlayerName) {
		this.playersPlayerName = playersPlayerName;
	}
	@Column(name = "first_name")
	public String getPlayersFirstName() {
		return playersFirstName;
	}
	public void setPlayersFirstName(String playersFirstName) {
		this.playersFirstName = playersFirstName;
	}
	@Column(name = "last_name")
	public String getPlayersLastName() {
		return playersLastName;
	}
	public void setPlayersLastName(String playersLastName) {
		this.playersLastName = playersLastName;
	}
	@Column(name = "amount")
	public BigDecimal getPlayersAmount() {
		return playersAmount;
	}
	public void setPlayersAmount(BigDecimal playersAmount) {
		this.playersAmount = playersAmount;
	}

}
