package com.wmanual.beans;

import java.util.ArrayList;
import java.util.List;

public class HomeMenuBean {
	private String type;
	private int typeseq;
	private List<SubTypeBean> subtypes = new ArrayList<SubTypeBean>();

	public HomeMenuBean() {
		super();
	}

	public HomeMenuBean(String type, int typeseq) {
		super();
		this.type = type;
		this.typeseq = typeseq;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getTypeseq() {
		return typeseq;
	}

	public void setTypeseq(int typeseq) {
		this.typeseq = typeseq;
	}

	public List<SubTypeBean> getSubtypes() {
		return subtypes;
	}

	public void setSubtypes(List<SubTypeBean> subtypes) {
		this.subtypes = subtypes;
	}

	public boolean addE(SubTypeBean stb) {
		if (type != null && type != null && type.equals(stb.getType())){
			subtypes.add(stb);
			return true;
		}
		return false;
			
	}

}
