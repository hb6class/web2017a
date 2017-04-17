package com.hb.model;

import java.sql.Date;

public class Guest04DTO {
	private int sabun,pay;
	private String name,sub;
	private Date nalja;
	
	public Guest04DTO() {
	}
	public Guest04DTO(int sabun, String name
			, String sub, Date nalja, int pay){
		this.sabun = sabun;
		this.name = name;
		this.sub = sub;
		this.nalja = nalja;
		this.pay = pay;
	}

	public int getSabun() {
		return sabun;
	}

	public void setSabun(int sabun) {
		this.sabun = sabun;
	}

	public int getPay() {
		return pay;
	}

	public void setPay(int pay) {
		this.pay = pay;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSub() {
		return sub;
	}

	public void setSub(String sub) {
		this.sub = sub;
	}

	public Date getNalja() {
		return nalja;
	}

	public void setNalja(Date nalja) {
		this.nalja = nalja;
	}

	@Override
	public String toString() {
		return "Guest04DTO [sabun=" + sabun + ", pay=" + pay + ", name=" + name
				+ ", sub=" + sub + ", nalja=" + nalja + "]";
	}
	
	
}
