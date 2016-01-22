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

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.wmanual.jpa.domain.ManualDomain;
import com.wmanual.jpa.service.ManualRepository;

@RestController
@RequestMapping(value = "/hb")
public class ManualController {

	private Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	private ManualRepository hbRepository;
	
	@RequestMapping(value = "/{id}", method = RequestMethod.PUT)
	public void update(HttpServletRequest request, @PathVariable("id") long id) throws Exception {
		logger.info("[{}] visit wmanual try to download {} ", request.getRemoteAddr(), id);
		ManualDomain hb = hbRepository.findOne(id);
		int downloadCount = hb.getDownloadCount();
		hb.setDownloadCount(++downloadCount);	
		hbRepository.save(hb);
	}
	
	@RequestMapping("/{type}/{subType}/{id}")
	public ManualDomain findByID(HttpServletRequest request, @PathVariable("id") long id) throws Exception {
		logger.info("[{}] visit wmanual try to view {} ", request.getRemoteAddr(), id);
		ManualDomain hb = hbRepository.findOne(id);
		int viewCount = hb.getViewCount();
		hb.setViewCount(++viewCount);	
		hbRepository.save(hb);
		
		return hb;
	}	

	@RequestMapping("")
	public Iterable<ManualDomain> all() throws Exception {
		return hbRepository.findAll();
	}

	@RequestMapping("/{type}")
	public Iterable<ManualDomain> allByType(@PathVariable("type") String type,
			@RequestParam(value = "pn", required = false, defaultValue = "0") int pn,
			@RequestParam(value = "size", required = false, defaultValue = "0") int size) {
		if (size > 0) {
			Pageable page = new PageRequest(pn, size);
			return hbRepository.findByTypePage(type, page);
		}
		return hbRepository.findByType(type);
	}

	@RequestMapping("/{type}/{subType}")
	public Iterable<ManualDomain> allByTyepSubType(@PathVariable("type") String type,
			@PathVariable("subType") String subType,
			@RequestParam(value = "brand", required = false, defaultValue = "") String brand,
			@RequestParam(value = "pn", required = false, defaultValue = "0") int pn,
			@RequestParam(value = "size", required = false, defaultValue = "0") int size) throws Exception {
		if (size > 0) {
			Pageable page = new PageRequest(pn, size);
			if (brand != null && brand.length() > 0){
				return hbRepository.findByTypeAndSubTypeAndBrandPage(type, subType, brand, page);
			}
			return hbRepository.findByTypeAndSubTypePage(type, subType, page);
		}		
		if (brand != null && brand.length() > 0){
			return hbRepository.findByTypeAndSubTypeAndBrand(type, subType, brand);
		}
		return hbRepository.findByTypeAndSubType(type, subType);
	}
}
