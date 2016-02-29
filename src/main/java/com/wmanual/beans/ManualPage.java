package com.wmanual.beans;

import java.util.List;

import com.wmanual.jpa.domain.ManualDomain;

public class ManualPage {
	
	private int pn;
	private int size;
	private int total;
	private List<ManualDomain> item;
	
	public ManualPage() {
	}
		
	public ManualPage(int pn, int size) {
		super();
		this.pn = pn;
		this.size = size;
	}
	public int getPn() {
		return pn;
	}
	public void setPn(int pn) {
		this.pn = pn;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}

	public List<ManualDomain> getItem() {
		return item;
	}

	public void setItem(List<ManualDomain> item) {
		this.item = item;
	}
}
