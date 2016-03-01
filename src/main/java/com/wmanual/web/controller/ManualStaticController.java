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

package com.wmanual.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.mail.EmailException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wmanual.configure.ConditionConfigure;
import com.wmanual.configure.EmailConfigure;
import com.wmanual.jpa.domain.Authority;
import com.wmanual.jpa.domain.User;
import com.wmanual.jpa.service.AuthorityRepository;
import com.wmanual.jpa.service.UserRepository;

@Controller
public class ManualStaticController {
	
	private Logger logger = LoggerFactory.getLogger(getClass()); 
		
	
	@RequestMapping("/custom")
	public String custom() throws Exception {
		return "static/custom";
	}
	
	@RequestMapping("/declare")
	public String declare() throws Exception {
		return "static/declare";
	}
	
	@RequestMapping("/friends")
	public String friends() throws Exception {
		return "static/friends";
	}
	
	@RequestMapping("/service")
	public String service() throws Exception {
		return "static/service";
	}
	
	@RequestMapping("/support")
	public String support() throws Exception {
		return "static/support";
	}
	
	@RequestMapping("/faq")
	public String faq() throws Exception {
		return "static/faq";
	}
	
	@RequestMapping("/consult")
	public String consult() throws Exception {
		return "static/consult";
	}
			
	@RequestMapping("/aboutus")
	public String aboutus() throws Exception {
		return "static/aboutus";
	}	
}
