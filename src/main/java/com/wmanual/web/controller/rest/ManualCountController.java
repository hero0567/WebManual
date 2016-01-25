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
import com.wmanual.jpa.domain.ManualDomain;
import com.wmanual.jpa.service.ManualCountRepository;
import com.wmanual.jpa.service.ManualFavoriteRepository;
import com.wmanual.jpa.service.ManualRepository;

@RestController
@RequestMapping(value = "/c")
public class ManualCountController {

	private Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	private ManualRepository manualRepository;
	
	@Autowired
	private ManualCountRepository mcRepository;
	
	@Autowired
	private ManualFavoriteRepository mfRepository;

	/**
	 *  Get subtype group by name
	 * 
	 * 	[{"count":29,"subType":"海尔","sequence":0},{"count":3,"subType":"美的","sequence":0}]
	 * 
	 * @param nm means name condition
	 * @param key the search key
	 * @param group if group by subType 
	 */
	@RequestMapping("/s/nm")
	public List<CountBean> searchSubtypeGroupByNameBrand(@RequestParam(value = "key", required = false) String key,
			@RequestParam(value = "group", required = false) boolean group) throws Exception {	
		if (group){
			return mcRepository.countByNameLikeGroupSubType(key);
		}
		return mcRepository.countByNameLike(key);
	}
	
	
	/**
	 * Get brand group by name
	 * 
	 * 	[{"count":29,"subType":"海尔","sequence":0},{"count":3,"subType":"美的","sequence":0}]
	 * 
	 * @param st means name subtype
	 * @param name the search key
	 * @param group if group by subType 
	 * @param ct time user choose
	 */
	@RequestMapping("/s/brand")
	public List<CountBean> searchBrandGroupByName(@RequestParam(value = "name") String name,
			@RequestParam(value = "group", required = false) boolean group,
			@RequestParam(value = "ct", required = false) String time) throws Exception {	
		boolean before = false;
		if (time == null || time.endsWith("全部")) {
			time = "";
		}
		if (time.length() > 4 ){
			time = time.substring(0, 4);
			before = true;
		}
		
		if (group){
			return searchGroupByName(name, time, before);
		}else{
			return searchByName(name, time, before);
		}
	}
	
	public List<CountBean> searchByName(String name, String time, boolean before){
		if ( time.length() > 0){
			if (before){
				return mcRepository.countByNameAndTimeBefore(name, Long.valueOf(time));
			}else{
				return mcRepository.countByNameAndTime(name, Long.valueOf(time));
			}
			
		}
		return mcRepository.countByName(name);
	}
	
	public List<CountBean> searchGroupByName(String name, String time, boolean before){
		if (time.length() > 0){
			if (before){
				return mcRepository.countByNameAndTimeBeforeGroupBrand(name, Long.valueOf(time));
			}else{
				return mcRepository.countByNameAndTimeGroupBrand(name, Long.valueOf(time));
			}			
		}
		return mcRepository.countByNameGroupBrand(name);
	}
	
	/**
	 * Get brand group by subtype
	 * 
	 * 	[{"count":29,"subType":"海尔","sequence":0},{"count":3,"subType":"美的","sequence":0}]
	 * 
	 * @param st means name subtype
	 * @param subtype the search key
	 * @param group if group by subType 
	 * @param ct time user choose
	 */
	@RequestMapping("/s/st")
	public List<CountBean> searchBrandGroupBySubtype(@RequestParam(value = "subtype") String subtype,
			@RequestParam(value = "group", required = false) boolean group,
			@RequestParam(value = "ct", required = false) String time) throws Exception {	
		boolean before = false;
		if (time == null || time.endsWith("全部")) {
			time = "";
		}
		if (time.length() > 4 ){
			time = time.substring(0, 4);
			before = true;
		}
		
		if (group){
			return searchGroupBySubtype(subtype, time, before);
		}else{
			return searchBySubtype(subtype, time, before);
		}
	}
	
	public List<CountBean> searchBySubtype(String subtype, String time, boolean before){
		if ( time.length() > 0){
			if (before){
				return mcRepository.countBySubTypeAndTimeBefore(subtype, Long.valueOf(time));
			}else{
				return mcRepository.countBySubTypeAndTime(subtype, Long.valueOf(time));
			}
			
		}
		return mcRepository.countBySubType(subtype);
	}
	
	public List<CountBean> searchGroupBySubtype(String subtype, String time, boolean before){
		if (time.length() > 0){
			if (before){
				return mcRepository.countBySubTypeAndTimeBeforeGroupBrand(subtype, Long.valueOf(time));
			}else{
				return mcRepository.countBySubTypeAndTimeGroupBrand(subtype, Long.valueOf(time));
			}			
		}
		return mcRepository.countBySubTypeGroupBrand(subtype);
	}
	
	@RequestMapping("/f")
	public List<CountBean> countByFavor(@RequestParam(value = "id", required = false) long id,
			@RequestParam(value = "group", required = false) boolean group) throws Exception {	
		if (group){
			return mfRepository.countByUIDGroup(id);
		}
		return mfRepository.countByUID(id);
	}

}
