package com.wmanual.beans;

public class MenuBean {
	
	private long count;
	private String subType;
	
	public MenuBean() {
		super();
	}

	public MenuBean(long count, String subType) {
		super();
		this.count = count;
		this.subType = subType;
	}

	public long getCount() {
		return count;
	}

	public void setCount(long count) {
		this.count = count;
	}

	public String getSubType() {
		return subType;
	}

	public void setSubType(String subType) {
		this.subType = subType;
	}
	
}
