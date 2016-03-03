package com.wmanual.beans;

import java.util.List;

public class SubTypeBean {
	
	private String type;
	private String subtype;
	private int seq;
	private long count;
	private String url;
	
	public SubTypeBean() {
		super();
	}

	public SubTypeBean(String type, String subtype, int seq, long count) {
		this.type = type;
		this.subtype = subtype;
		this.seq = seq;
		this.count = count;
	}
	
	public SubTypeBean(String type, String subtype, int seq, long count,
			String url) {
		this.type = type;
		this.subtype = subtype;
		this.seq = seq;
		this.count = count;
		this.url = url;
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

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
}
