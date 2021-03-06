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

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.wmanual.jpa.domain.ManualServiceDomain;
import com.wmanual.jpa.service.ManualServiceRepository;

@RestController
@RequestMapping(value = "/hbs")
public class ManualServiceController {

	private Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	private ManualServiceRepository hbsRepository;
	

	@RequestMapping("/{brand}")
	public Iterable<ManualServiceDomain> allByKeyword(@PathVariable("brand") String brand) {
		return hbsRepository.findByBrand(brand);
	}
}
