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
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.wmanual.beans.CountBean;
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

//	@RequestMapping("")
//	public Iterable<ManualDomain> search(@RequestParam(value = "key", required = false) String key,
//			@RequestParam(value = "pn", required = false, defaultValue = "0") int pn,
//			@RequestParam(value = "size", required = false, defaultValue = "10") int size) throws Exception {
//		Pageable page = new PageRequest(pn, size);
//		return hbRepository.findByNameOrBrandLikePage(key, page);
//	}
//	
//	@RequestMapping("")
//	public List<ManualDomain> searchGroupByBrand(@RequestParam(value = "key", defaultValue="") String key,
//			@RequestParam(value = "subtype", required = false, defaultValue="%%") String subtype,
//			@RequestParam(value = "brand", required = false, defaultValue="%%") String brand,
//			@RequestParam(value = "ct", required = false, defaultValue="") String time,
//			@RequestParam(value = "pn", required = false, defaultValue = "0") int pn,
//			@RequestParam(value = "size", required = false, defaultValue = "10") int size) throws Exception {
//		
//		Pageable page = new PageRequest(pn, size);
//		long btime = 0;
//		long atime = 3000;
//		
//		time = time.endsWith("全部") ? time = "" : time;
//		subtype = subtype.endsWith("全部") ? subtype = "%%" : subtype;
//		brand = brand.endsWith("全部") ? brand = "%%" : brand;
//		
//		if (time.length() > 4 ){
//			time = time.substring(0, 4);
//		}else if (time.length() == 4){
//			atime = Long.valueOf(time);
//			btime = Long.valueOf(time);
//		}
//		
//		return hbRepository.findByNameSubtypeBrandTime(key, subtype, brand, btime, atime, page);
//	}
//
//	@RequestMapping("/{type}")
//	public Iterable<ManualDomain> allByKeyword(@PathVariable("type") String type,
//			@RequestParam(value = "key", required = false, defaultValue="") String key,
//			@RequestParam(value = "subtype", required = false, defaultValue="%%") String subtype,
//			@RequestParam(value = "brand", required = false, defaultValue="%%") String brand,
//			@RequestParam(value = "ct", required = false, defaultValue="") String time,
//			@RequestParam(value = "pn", required = false, defaultValue = "0") int pn,
//			@RequestParam(value = "size", required = false, defaultValue = "10") int size) {
//		Pageable page = new PageRequest(pn, size);
//		long btime = 0;
//		long atime = 3000;
//		
//		time = time.endsWith("全部") ? time = "" : time;
//		subtype = subtype.endsWith("全部") ? subtype = "%%" : subtype;
//		brand = brand.endsWith("全部") ? brand = "%%" : brand;
//		
//		if (time.length() > 4 ){
//			time = time.substring(0, 4);
//		}else if (time.length() == 4){
//			atime = Long.valueOf(time);
//			btime = Long.valueOf(time);
//		}
//		return hbRepository.findByNameTypeSubtypeBrandTime(key, type, subtype, brand, btime, atime, page);
//	}
	
	@RequestMapping("")
	public Iterable<ManualDomain> condition(
			@RequestParam(value = "type", required = false, defaultValue="") String type,
			@RequestParam(value = "subtype", required = false, defaultValue="") String subtype,
			@RequestParam(value = "brand", required = false, defaultValue="") String brand,
			@RequestParam(value = "time", required = false, defaultValue="") String time,
			@RequestParam(value = "version", required = false, defaultValue="") String version) throws SQLException {
		
		int pageSize = 10;
		int pageNumber = 1;
		long btime = 0;
		long atime = 3000;
		List<ManualDomain> manuals = new ArrayList<ManualDomain>();
		StringBuffer sql = new StringBuffer();
		sql.append("select * from wmanual where ");
		
		if (type != "") sql.append(" and type = ").append(type);
		if (subtype != "") sql.append(" and subtype = ").append(type);
		if (brand != "") {
			sql.append(" and brand in (").append(type).append(")");
		}
		if (version != "") sql.append(" and version like %").append(type).append("%");
		
		ResultSet rs = jdbcService.executeQueryPage(sql.toString(), pageSize, pageNumber);
		while(rs.next()){
//			rs.getInt("id");
			ManualDomain manual = new ManualDomain();
			manual.setId(rs.getLong("id"));
			manuals.add(manual);
		}
		
		return manuals;
	}
}
