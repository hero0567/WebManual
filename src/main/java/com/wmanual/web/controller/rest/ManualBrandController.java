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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.wmanual.beans.CountBean;
import com.wmanual.jpa.domain.ManualBrandDomain;
import com.wmanual.jpa.service.ManualBrandRepository;
import com.wmanual.jpa.service.ManualCountRepository;
import com.wmanual.jpa.service.ManualFavoriteRepository;
import com.wmanual.jpa.service.ManualRepository;

@RestController
@RequestMapping(value = "/b")
public class ManualBrandController {

	private Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	private ManualBrandRepository mbRepository;

	// group by brand
	@RequestMapping("")
	public Iterable<ManualBrandDomain> findAll() throws Exception {
		
		return mbRepository.findAll();
	}

	// group by brand
	@RequestMapping("/name")
	public ManualBrandDomain findByName(@RequestParam(value = "name", required = false, defaultValue = "") String name) throws Exception {
		return mbRepository.findByName(name);
	}
	
	@RequestMapping("/count")
	public long count() throws Exception {
		return mbRepository.count();
	}
	
	

}
