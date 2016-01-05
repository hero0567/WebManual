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

package com.wmanual.web.controller.handbook;

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

import com.wmanual.beans.SearchBean;
import com.wmanual.jpa.domain.HandBookDomain;
import com.wmanual.jpa.service.HandBookRepository;

@RestController
@RequestMapping(value = "/c")
public class HandBookCountController {

	private Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	private HandBookRepository hbRepository;

	@RequestMapping("/{type}")
	public Iterable<HandBookDomain> allByKeyword(@PathVariable("type") String type,
			@RequestParam(value = "key", required = false) String key) {
		logger.info("Search by keyword " + key);
		Pageable page = new PageRequest(0, 10);
		return hbRepository.findSize(page).getContent();
	}

	@RequestMapping("/s")
	public List<SearchBean> searchByGroup(@RequestParam(value = "key", required = false) String key,
			@RequestParam(value = "group", required = false) boolean group) throws Exception {	
		if (group){
			return hbRepository.countByNameLikeGroup(key);
		}
		return hbRepository.countByNameLike(key);
	}

	@RequestMapping("/s/{type}")
	public List<SearchBean> searchByKeyword(@PathVariable("type") String type,
			@RequestParam(value = "key", required = false) String key) {
		return hbRepository.countByTypeAndNameLike(type, key);
	}

	@RequestMapping("/s/{type}/{subType}")
	public List<SearchBean> allByTyepSubTypeKeyword(@PathVariable("type") String type,
			@PathVariable("subType") String subType, @RequestParam(value = "key", required = false) String key)
					throws Exception {
		return hbRepository.countByTypeAndSubTypeAndNameLike(type, subType, key);
	}

}
