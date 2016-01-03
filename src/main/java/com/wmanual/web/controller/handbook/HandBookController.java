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

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.wmanual.jpa.domain.HandBookDomain;
import com.wmanual.jpa.service.HandBookRepository;

@RestController
@RequestMapping(value = "/hb")
public class HandBookController {

	private Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	private HandBookRepository hbRepository;

	@RequestMapping("")
	public Iterable<HandBookDomain> all() throws Exception {
		return hbRepository.findAll();
	}

	@RequestMapping("/{type}")
	public Iterable<HandBookDomain> allByType(@PathVariable("type") String type,
			@RequestParam(value = "pn", required = false, defaultValue = "0") int pn,
			@RequestParam(value = "size", required = false, defaultValue = "0") int size) {
		if (size > 0) {
			Pageable page = new PageRequest(pn, size);
			return hbRepository.findByTypeSize(type, page);
		}
		return hbRepository.findByType(type);
	}

	@RequestMapping("/{type}/{subType}")
	public Iterable<HandBookDomain> allByTyepSubType(@PathVariable("type") String type,
			@PathVariable("subType") String subType,
			@RequestParam(value = "pn", required = false, defaultValue = "0") int pn,
			@RequestParam(value = "size", required = false, defaultValue = "0") int size) throws Exception {
		if (size > 0) {
			Pageable page = new PageRequest(pn, size);
			return hbRepository.findByTypeAndSubTypeSize(type, subType, page);
		}
		return hbRepository.findByTypeAndSubType(type, subType);
	}
	
	@RequestMapping("/{type}/{subType}/count")
	public long count() throws Exception {
		return hbRepository.count();
	}
}
