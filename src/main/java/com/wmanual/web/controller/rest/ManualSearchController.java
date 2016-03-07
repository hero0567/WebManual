/*
 * Copyright 2014 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.wmanual.web.controller.rest;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.wmanual.beans.ManualPage;
import com.wmanual.jdbc.service.ManualJDBCService;
import com.wmanual.jpa.domain.ManualDomain;
import com.wmanual.jpa.service.ManualRepository;

@RestController
@RequestMapping(value = "/s")
public class ManualSearchController {

	private Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	private ManualRepository hbRepository;
	
	@Autowired
	private ManualJDBCService jdbcService;

	
	@RequestMapping("")
	public List<ManualDomain> searchGroupByBrand(@RequestParam(value = "key", defaultValue="") String key,
			@RequestParam(value = "subtype", required = false, defaultValue="%%") String subtype,
			@RequestParam(value = "brand", required = false, defaultValue="%%") String brand,
			@RequestParam(value = "ct", required = false, defaultValue="") String time,
			@RequestParam(value = "pn", required = false, defaultValue = "0") int pn,
			@RequestParam(value = "size", required = false, defaultValue = "10") int size) throws Exception {
		
		Pageable page = new PageRequest(pn, size);
		long btime = 0;
		long atime = 3000;
		
		time = time.endsWith("全部") ? time = "" : time;
		subtype = subtype.endsWith("全部") ? subtype = "%%" : subtype;
		brand = brand.endsWith("全部") ? brand = "%%" : brand;
		
		if (time.length() > 4 ){
			time = time.substring(0, 4);
		}else if (time.length() == 4){
			atime = Long.valueOf(time);
			btime = Long.valueOf(time);
		}
		
		return hbRepository.findByNameSubtypeBrandTime(key, subtype, brand, btime, atime, page);
	}
	
	@RequestMapping("/b")
	public List<Object[]> findSearchBrand(@RequestParam(value = "subtype", required = false, defaultValue="") String subtype,
				@RequestParam(value = "key", required = false, defaultValue="") String key) throws Exception {
		if (key.length()  == 0){
			return hbRepository.findBrandBySubtype(subtype);
		}
		if (subtype.length()  == 0){
			return hbRepository.findBrandBySearchKey(key);
		}	
		
		return hbRepository.findBrandByBrandAndSearchKey(subtype, key);
	}
	
	@RequestMapping("/st")
	public List<Object[]> findSubTypeByBrand(@RequestParam(value = "brand", required = false, defaultValue="") String brand,
				@RequestParam(value = "key", required = false, defaultValue="") String key) throws Exception {
		
		if (key.length()  == 0){
			return hbRepository.findSubTypeByBrand(brand);
		}
		if (brand.length()  == 0){
			return hbRepository.findSubTypeBySearchKey(key);
		}		
		return hbRepository.findSubTypeByBrandAndSearchKey(brand, key);
	}

	@RequestMapping("/t")
	public Iterable<ManualDomain> allByKeyword(@RequestParam(value = "type", required = false, defaultValue="") String type,
			@RequestParam(value = "key", required = false, defaultValue="") String key,
			@RequestParam(value = "subtype", required = false, defaultValue="%%") String subtype,
			@RequestParam(value = "brand", required = false, defaultValue="%%") String brand,
			@RequestParam(value = "ct", required = false, defaultValue="") String time,
			@RequestParam(value = "pn", required = false, defaultValue = "0") int pn,
			@RequestParam(value = "size", required = false, defaultValue = "10") int size) {
		Pageable page = new PageRequest(pn, size);
		long btime = 0;
		long atime = 3000;
		
		time = time.endsWith("全部") ? time = "" : time;
		subtype = subtype.endsWith("全部") ? subtype = "%%" : subtype;
		brand = brand.endsWith("全部") ? brand = "%%" : brand;
		
		if (time.length() > 4 ){
			time = time.substring(0, 4);
		}else if (time.length() == 4){
			atime = Long.valueOf(time);
			btime = Long.valueOf(time);
		}
		return hbRepository.findByNameTypeSubtypeBrandTime(key, type, subtype, brand, btime, atime, page);
	}
	
	@RequestMapping("/s")
	public ManualPage condition(
			@RequestParam(value = "type", required = false, defaultValue="") String type,
			@RequestParam(value = "subtype", required = false, defaultValue="") String subtype,
			@RequestParam(value = "brand", required = false, defaultValue="") String brand,
			@RequestParam(value = "ct", required = false, defaultValue="") String time,
			@RequestParam(value = "key", required = false, defaultValue="") String key,
			@RequestParam(value = "version", required = false, defaultValue="") String version,
			@RequestParam(value = "pn", required = false, defaultValue = "0") int pn,
			@RequestParam(value = "size", required = false, defaultValue = "20") int size) throws SQLException {
				
		ManualPage page = new ManualPage(pn, size);
		
		List<ManualDomain> manuals = new ArrayList<ManualDomain>();
		StringBuffer condition = new StringBuffer();
		
		if (type.length() > 0)
			addSearchCondition(condition, " type = '" + type.trim() + "'");
		if (key.length() > 0)
			addSearchCondition(condition, addSearchKey(subtype, brand,  key));
		
		if (subtype.length() > 0) {
			String subtypeCondition = spiltStringConditionIn(subtype);	
			addSearchCondition(condition, " subtype in (" + subtypeCondition.trim() + ")");
		}
		if (brand.length() > 0) {
			String brandCondition = spiltStringConditionIn(brand);	
			addSearchCondition(condition, " brand in (" + brandCondition.trim() + ")");
		}
		if (version.length() > 0) 
			addSearchCondition(condition, " version like '%" + version.trim() + "%'");
		if (time.length() > 0) {
			addSearchCondition(condition, spiltTimeConditionIn(time));
		}
			
		
		ResultSet rs = jdbcService.executeQueryPage("select * from wmanual " + condition.toString(), size, pn);
		while (rs != null && rs.next()) {
			ManualDomain manual = new ManualDomain();
			manual.setId(rs.getLong("id"));
			manual.setBrand(rs.getString("brand"));
			manual.setVersion(rs.getString("version"));
			manual.setSubType(rs.getString("subtype"));
			manual.setType(rs.getString("type"));
			manual.setName(rs.getString("name"));
			manual.setUrl(rs.getString("url"));
			manuals.add(manual);
		}
		
		ResultSet count = jdbcService.countQuery("select count(1) from wmanual " + condition.toString());
		int total = 0;
		while (count != null && count.next()) {
			total = count.getInt(1);
		}
		
		page.setItem(manuals);
		page.setTotal(total);
		
		return page;
	}
	
	public void addSearchCondition(StringBuffer sql, String condition){
		if (sql.indexOf("where") > -1){
			sql.append(" and ");
			sql.append(condition);
		}else{
			sql.append(" where ");
			sql.append(condition);
		}
	}
	
	public String addSearchKey(String subtype, String brand, String key){
		StringBuffer keySql = new StringBuffer();
		boolean orCoditon = false;
		keySql.append("(");
		if (subtype.length() == 0) {
			keySql.append(" subtype like '%").append(key.trim()).append("%'");
			orCoditon = true;
		}
		if (brand.length() == 0) {
			if (orCoditon) keySql.append(" or ");
			keySql.append(" brand like '%").append(key.trim()).append("%'");
			keySql.append(" or ").append(" ebrand like '%").append(key.trim()).append("%'");
			orCoditon = true;
		}
		if (orCoditon) keySql.append(" or ");
		keySql.append(" name like '%").append(key.trim()).append("%'");
		keySql.append(")");
		return keySql.toString();
		
	}
	
	public String spiltStringConditionIn( String brand){
		String brandCondition = null;
		String[] brands = brand.split(",");
		for (String b : brands){
			if (!b.trim().equals(",")){
				if (brandCondition == null){
					brandCondition = "'" + b + "'";
				} else{
					brandCondition = brandCondition + ",'" + b + "'";
				}
			}
		}	
		return brandCondition;
	}
	
	public String spiltTimeConditionIn( String time){
		String timecondition = null;
		String timeIn = null;
		String timeBefore = null;
		String[] brands = time.split(",");
		for (String b : brands){
			if (b.trim().equals(",")){
				continue;
			}
			
			if (b.indexOf("2012") > -1){
				timeBefore = "productDate <= 2012";
			}else{
				if (timeIn == null){
					timeIn = b;
				} else{
					timeIn = timeIn + "," + b ;
				}
			}
		}		
				
		if (timeIn == null || timeBefore == null){
			timecondition = timeIn == null ? timeBefore : "productDate in (" + timeIn + ")" ;	
		}else{
			timeIn = "productDate in (" + timeIn + ")";
			timecondition = "(" + timeIn + " or " + timeBefore + ")";
		}
		return timecondition;
	}
}
