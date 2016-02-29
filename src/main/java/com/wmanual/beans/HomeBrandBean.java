package com.wmanual.beans;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.wmanual.jpa.domain.ManualBrandDomain;

public class HomeBrandBean {
	private String origin;
	private int origincount;
	private List<ManualBrandDomain> subtypes = new ArrayList<ManualBrandDomain>();

	
	private Logger logger = LoggerFactory.getLogger(getClass());
	
	public HomeBrandBean() {
		super();
	}
	
	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public int getOrigincount() {
		return subtypes.size();
	}

	public void setOrigincount(int origincount) {
		this.origincount = origincount;
	}

	public List<ManualBrandDomain> getSubtypes() {
		return subtypes;
	}

	public void setSubtypes(List<ManualBrandDomain> subtypes) {
		this.subtypes = subtypes;
	}

	public boolean addE(ManualBrandDomain stb) {
		
		logger.info(origin);
		logger.info(stb.getOrigin());
		
		if (origin.equalsIgnoreCase(stb.getOrigin())){
			subtypes.add(stb);	
			return true;
		}
		return false;
	}
}
