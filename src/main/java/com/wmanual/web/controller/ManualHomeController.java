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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wmanual.configure.ConditionConfigure;
import com.wmanual.configure.EmailConfigure;
import com.wmanual.jpa.domain.Authority;
import com.wmanual.jpa.domain.User;
import com.wmanual.jpa.service.AuthorityRepository;
import com.wmanual.jpa.service.UserRepository;

@Controller
public class ManualHomeController {
	
	private Logger logger = LoggerFactory.getLogger(getClass()); 
	
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private AuthorityRepository authorityRepository;
	@Autowired
	private EmailConfigure emailConfigure;
	
	@Autowired
	private ConditionConfigure condition;
	
	@RequestMapping("/")
	public String home(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "home");		
		return "webmanual/index";
	}
	
	@RequestMapping("/index")
	public String index(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "index");
		return "webmanual/index";
	}
	
	@RequestMapping("/types/{name}")
	public String types(HttpServletRequest request, @PathVariable("name") String name) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "index");
		return "types/" + name;
	}	
	
	@RequestMapping("/brands/{name}")
	public String brands(HttpServletRequest request, @PathVariable("name") String name) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "index");
		return "brands/" + name;
	}
	
	@RequestMapping("/search")
	public String search(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "search");
		return "webmanual/search";
	}
	
	//品牌黄页
	@RequestMapping("/yellowpage")
	public String yellowpage(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "yellowpage");
		return "yellowpage/yellowpage";
	}
	
	@RequestMapping("/manuals")
	public String manuals(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "manuals");
		return "webmanual/manuals";
	}
	
	@RequestMapping("/appliance")
	public String appliance(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "appliance");
		return "webmanual/appliance";
	}
	
	@RequestMapping("/result")
	public String result(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "result");
		return "webmanual/result";
	}

	@RequestMapping("/signin")
	public String signin(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "signin");
		return "webmanual/signin";
	}
	
	@RequestMapping("/signup")
	public String signup(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "signup");
		return "webmanual/signup";
	}
	
	@RequestMapping("/pdfonline")
	public String pdfonline(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "pdfonline");
		return "webmanual/pdfonline";
	}	
		
	@RequestMapping("/details")
	public String details() throws Exception {
		return "webmanual/details";
	}
	
	/**
	 * http://localhost:8080/register?username=11112121&password=1212121
	 * @param user
	 * @return
	 * @throws EmailException 
	 */
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String registerUser(User user) throws EmailException {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		user.setPassword(encoder.encode(user.getPassword()));
		Authority auth = new Authority();
		auth.setUsername(user.getUsername());
		auth.setAuthority("ROLE_USER");
		user.setEnabled(true);
		logger.info("Username :{}, Password:{}",user.getUsername(),user.getPassword());
		userRepository.save(user);
		authorityRepository.save(auth);
		
		//EmailUtil.getInstance().sendEmail(user.getUsername(), emailConfigure);
		return "webmanual/signin";
	}
	
	@RequestMapping(value="/logout")
	public String logout() {
		return "webmanual/signin";
	}
}
