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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.wmanual.beans.CountBean;
import com.wmanual.jpa.service.ManualCountRepository;
import com.wmanual.jpa.service.ManualFavoriteRepository;
import com.wmanual.jpa.service.ManualRepository;

@RestController
@RequestMapping(value = "/c")
public class ManualCountController {

	private Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private ManualCountRepository mcRepository;
	
	@Autowired
	private ManualFavoriteRepository mfRepository;
	
	
	// group by brand
	@RequestMapping("/g/b")
	public List<CountBean> searchGroupByBrand(@RequestParam(value = "name", defaultValue="") String name,
			@RequestParam(value = "subtype", required = false, defaultValue="") String subtype,
			@RequestParam(value = "brand", required = false, defaultValue="") String brand,
			@RequestParam(value = "ct", required = false) String time) throws Exception {
		
		long btime = 0;
		long atime = 3000;
		
		time = time.endsWith("全部") ? time = "" : time;
		subtype = subtype.endsWith("全部") ? subtype = "" : subtype;
		brand = brand.endsWith("全部") ? brand = "" : brand;
		
		if (time.length() > 4 ){
			time = time.substring(0, 4);
		}else if (time.length() == 4){
			atime = Long.valueOf(time);
			btime = Long.valueOf(time);
		}
		
		return mcRepository.countGroupByBrand(name, subtype, brand, btime, atime);
	}
	
	// group by subtype
	@RequestMapping("/g/st")
	public List<CountBean> searchGroupBySubtype(@RequestParam(value = "key", defaultValue="") String key) throws Exception {	
		return mcRepository.countGroupBySubType(key);
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
