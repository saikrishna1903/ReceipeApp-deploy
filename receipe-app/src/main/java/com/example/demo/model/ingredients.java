package com.example.demo.model;

import javax.persistence.Entity;

import javax.persistence.Id;





@Entity
public  class ingredients {

	@Id
	
	private int ing_id;
	private String ing_name;
	public int getIng_id() {
		return ing_id;
	}
	public void setIng_id(int ing_id) {
		this.ing_id = ing_id;
	}
	public String getIng_name() {
		return ing_name;
	}
	public void setIng_name(String ing_name) {
		this.ing_name = ing_name;
	}
	

	


}
