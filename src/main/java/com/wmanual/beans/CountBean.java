package com.wmanual.beans;

public class CountBean {
	private long count;
	private String subType;
	private int sequence;
	
	public CountBean() {
		super();
	}
	
	public CountBean(long count) {
		super();
		this.count = count;
	}

	public CountBean(long count, String subType) {
		super();
		this.count = count;
		this.subType = subType;
	}
	
	public CountBean(long count, String subType, int sequence) {
		super();
		this.count = count;
		this.subType = subType;
		this.sequence = sequence;
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

	public int getSequence() {
		return sequence;
	}

	public void setSequence(int sequence) {
		this.sequence = sequence;
	}	
}
