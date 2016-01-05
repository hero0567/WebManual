package com.wmanual.beans;

public class SearchBean {
	private long count;
	private String subType;
	
	public SearchBean() {
		super();
	}
	
	public SearchBean(long count) {
		super();
		this.count = count;
	}

	public SearchBean(long count, String subType) {
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
