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
import com.wmanual.beans.HomeBrandBean;
import com.wmanual.beans.HomeMenuBean;
import com.wmanual.beans.SubTypeBean;
import com.wmanual.jpa.domain.ManualBrandDomain;
import com.wmanual.jpa.domain.ManualMenuDomain;
import com.wmanual.jpa.service.ManualBrandRepository;
import com.wmanual.jpa.service.ManualMenuRepository;
import com.wmanual.jpa.service.ManualRepository;

@RestController
@RequestMapping(value = "/menu")
public class MenuController {

	@Autowired
	private ManualRepository menuRepository;
	
	@Autowired
	private ManualMenuRepository manualMenuRepository;
	
	@Autowired
	private ManualBrandRepository mbRepository;

	@RequestMapping("/type")
	public Iterable<HomeMenuBean> allTypeMenu() throws Exception {
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
			String url = (String) objs[5];
			
			menuSize.add(type);
			if (menuSize.size() > menu.size() ){
				hmb = new HomeMenuBean(type, typeSeq);
				menu.add(hmb);
			}			
			
			SubTypeBean stb = new SubTypeBean(type, subType, subTypeSeq, count.longValue(), url);
			hmb.addE(stb);
		}
		return menu;
	}
	
	@RequestMapping("/brand")
	public Iterable<HomeBrandBean> allBrandMenu() throws Exception {
		
		Set<String> originSize = new HashSet();
		List<HomeBrandBean> menu = new ArrayList<HomeBrandBean>();
		Iterable<ManualBrandDomain>  brands = mbRepository.findAll();
		
		for (ManualBrandDomain brand : brands){
			originSize.add(brand.getOrigin());
			if (originSize.size() > menu.size() ){
				HomeBrandBean hbb = new HomeBrandBean();
				hbb.setOrigin(brand.getOrigin());
				
				hbb.addE(brand);				
				menu.add(hbb);
				continue;
			}
			
			for (HomeBrandBean m : menu){
				if (m.addE(brand)){
					break;
				}
			}
		}
		
		return menu;
	}
	
	@RequestMapping("/header")
	public Iterable<ManualMenuDomain> header() throws Exception {
		return manualMenuRepository.findAll();
	}
}
