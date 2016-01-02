package com.wmanual.beans;

public class MenuBean {
	
	private long count;
	private String subTyep;
	
	public MenuBean() {
		super();
	}
	public MenuBean(long count, String subTyep) {
		super();
		this.count = count;
		this.subTyep = subTyep;
	}
	public long getCount() {
		return count;
	}
	public void setCount(long count) {
		this.count = count;
	}
	public String getSubTyep() {
		return subTyep;
	}
	public void setSubTyep(String subTyep) {
		this.subTyep = subTyep;
	}
	
}
