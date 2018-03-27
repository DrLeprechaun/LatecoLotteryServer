package com.lateco.lotteryserver.entities;

public class BasicResponse {
	
	private String status;
	private String description;
	
	public BasicResponse(String status, String description) {
		this.status = status;
		this.description = description;
	}
	
	public BasicResponse() {};
	
	public String getStatus() {
		return this.status;
	}
	
	public void setStatus(String status) {
		this.status = status;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getDescription() {
		return this.description;
	}

}
