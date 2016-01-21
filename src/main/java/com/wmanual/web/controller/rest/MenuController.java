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
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.wmanual.beans.CountBean;
import com.wmanual.jpa.service.ManualRepository;

@RestController
@RequestMapping(value = "/menu")
public class MenuController {

	@Autowired
	private ManualRepository menuRepository;

	@RequestMapping("")
	public Iterable<CountBean> allMenu() throws Exception {
		List<CountBean> menu = new ArrayList<CountBean>();
		List<Object[]> list = menuRepository.findMenu();
		for (Object[] objs : list){
			BigInteger count = (BigInteger ) objs[0];
			String subType = (String) objs[1];
			int sequence = (Integer) objs[2];
			menu.add(new CountBean(count.longValue(), subType, sequence));
		}
		return menu;
	}	
}
