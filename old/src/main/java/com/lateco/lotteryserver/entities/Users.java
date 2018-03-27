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

@Entity
@Table(name = "users")
public class Users implements Serializable {
	
	private Long usersId;
	private String usersUsername;

	public Users() {
	}

	public Users(String usersUsername) {
		this.usersUsername = usersUsername;
	}

	@Id
	@GeneratedValue(strategy = SEQUENCE, generator = "users_id_seq")
	@Column(name = "id", unique = true, nullable = false)
	public Long getUsersId() {
		return this.usersId;
	}

	public void setUsersId(Long usersId) {
		this.usersId = usersId;
	}

	@Column(name = "username", unique = false, nullable = false, length = 20)
	public String getUsername() {
		return this.usersUsername;
	}

	public void setUsername(String name) {
		this.usersUsername = usersUsername;
	}

}
