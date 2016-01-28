package com.wmanual.beans;

import java.util.List;

public class SubTypeBean {
	
	private String type;
	private String subtype;
	private int seq;
	private long count;
	
	public SubTypeBean() {
		super();
	}

	public SubTypeBean(String type, String subtype, int seq, long count) {
		super();
		this.type = type;
		this.subtype = subtype;
		this.seq = seq;
		this.count = count;
	}

	public long getCount() {
		return count;
	}

	public void setCount(long count) {
		this.count = count;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getSubtype() {
		return subtype;
	}

	public void setSubtype(String subtype) {
		this.subtype = subtype;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	
	
	
	
}
