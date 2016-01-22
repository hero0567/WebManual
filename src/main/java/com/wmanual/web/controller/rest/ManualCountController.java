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
import com.wmanual.jpa.service.ManualFavoriteRepository;
import com.wmanual.jpa.service.ManualRepository;

@RestController
@RequestMapping(value = "/c")
public class ManualCountController {

	private Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	private ManualRepository hbRepository;
	
	@Autowired
	private ManualFavoriteRepository hbfRepository;

//	@RequestMapping("/{type}")
//	public Iterable<ManualDomain> allByKeyword(@PathVariable("type") String type,
//			@RequestParam(value = "key", required = false) String key) {
//		logger.info("Search by keyword " + key);
//		Pageable page = new PageRequest(0, 10);
//		return hbRepository.findSize(page).getContent();
//	}

	/**
	 * @param nm means name condition
	 * @param key the search key
	 * @param group if group by subType 
	 */
	@RequestMapping("/s/nm")
	public List<CountBean> searchNameByGroup(@RequestParam(value = "key", required = false) String key,
			@RequestParam(value = "group", required = false) boolean group) throws Exception {	
		if (group){
			return hbRepository.countByNameLikeGroupSubType(key);
		}
		return hbRepository.countByNameLike(key);
	}
	
	/**
	 * @param st means name subtype
	 * @param key the search key
	 * @param group if group by subType 
	 * @param ct time user choose
	 */
	@RequestMapping("/s/st")
	public List<CountBean> searchBrandByGroup(@RequestParam(value = "key", required = false) String key,
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
			return searchByGroup(key, time, before);
		}else{
			return search(key, time, before);
		}
	}
	
	public List<CountBean> search(String key, String time, boolean before){
		if ( time.length() > 0){
			if (before){
				return hbRepository.countBySubTypeAndTimeBefore(key, Long.valueOf(time));
			}else{
				return hbRepository.countBySubTypeAndTime(key, Long.valueOf(time));
			}
			
		}
		return hbRepository.countBySubType(key);
	}
	
	public List<CountBean> searchByGroup(String key, String time, boolean before){
		if (time.length() > 0){
			if (before){
				return hbRepository.countBySubTypeAndTimeBeforeGroupBrand(key, Long.valueOf(time));
			}else{
				return hbRepository.countBySubTypeAndTimeGroupBrand(key, Long.valueOf(time));
			}			
		}
		return hbRepository.countBySubTypeGroupBrand(key);
	}
	
	
//	@RequestMapping("/s/{type}")
//	public List<CountBean> searchByKeyword(@PathVariable("type") String type,
//			@RequestParam(value = "key", required = false) String key) {
//		return hbRepository.countByTypeAndNameLike(type, key);
//	}
//
//	@RequestMapping("/s/{type}/{subType}")
//	public List<CountBean> allByTyepSubTypeKeyword(@PathVariable("type") String type,
//			@PathVariable("subType") String subType, @RequestParam(value = "key", required = false) String key)
//					throws Exception {
//		return hbRepository.countByTypeAndSubTypeAndNameLike(type, subType, key);
//	}
	
	@RequestMapping("/f")
	public List<CountBean> countByFavor(@RequestParam(value = "id", required = false) long id,
			@RequestParam(value = "group", required = false) boolean group) throws Exception {	
		if (group){
			return hbfRepository.countByUIDGroup(id);
		}
		return hbfRepository.countByUID(id);
	}

}
