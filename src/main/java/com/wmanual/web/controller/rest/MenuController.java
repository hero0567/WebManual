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

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.wmanual.beans.CountBean;
import com.wmanual.beans.HomeMenuBean;
import com.wmanual.beans.SubTypeBean;
import com.wmanual.jpa.domain.ManualMenuDomain;
import com.wmanual.jpa.service.ManualMenuRepository;
import com.wmanual.jpa.service.ManualRepository;

@RestController
@RequestMapping(value = "/menu")
public class MenuController {

	@Autowired
	private ManualRepository menuRepository;
	
	@Autowired
	private ManualMenuRepository manualMenuRepository;

	@RequestMapping("")
	public Iterable<HomeMenuBean> allMenu() throws Exception {
		List<HomeMenuBean> menu = new ArrayList<HomeMenuBean>();
		Set<String> menuSize = new HashSet();
		List<Object[]> list = menuRepository.findMenu();
		HomeMenuBean hmb = null;
		
		for (Object[] objs : list){
			String type = (String) objs[0];
			int typeSeq = (Integer ) objs[1];
			String subType = (String) objs[2];
			int subTypeSeq = (Integer ) objs[3];
			BigInteger count = (BigInteger) objs[4];
			
			menuSize.add(type);
			if (menuSize.size() > menu.size() ){
				hmb = new HomeMenuBean(type, typeSeq);
				menu.add(hmb);
			}			
			
			SubTypeBean stb = new SubTypeBean(type, subType, subTypeSeq, count.longValue());
			hmb.addE(stb);
		}
		return menu;
	}
	
	@RequestMapping("/header")
	public Iterable<ManualMenuDomain> header() throws Exception {
		return manualMenuRepository.findAll();
	}
}
