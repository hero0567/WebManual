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

import org.apache.commons.mail.EmailException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wmanual.configure.EmailConfigure;
import com.wmanual.jpa.domain.Authority;
import com.wmanual.jpa.domain.User;
import com.wmanual.jpa.service.AuthorityRepository;
import com.wmanual.jpa.service.UserRepository;

@Controller
public class HandBookHomeController {
	
	private Logger logger = LoggerFactory.getLogger(getClass()); 
	
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private AuthorityRepository authorityRepository;
	@Autowired
	private EmailConfigure emailConfigure;
	
	@RequestMapping("/")
	public String index() throws Exception {
		return "webmanual/index";
	}
	
	@RequestMapping("/tv")
	public String tv() throws Exception {
		return "webmanual/tv";
	}
	
	@RequestMapping("/fridge")
	public String fridge() throws Exception {
		return "webmanual/fridge";
	}
	
	@RequestMapping("/result")
	public String result() throws Exception {
		return "webmanual/result";
	}

	@RequestMapping("/signin")
	public String signin() throws Exception {
		return "webmanual/signin";
	}
	
	@RequestMapping("/signup")
	public String signup() throws Exception {
		return "webmanual/signup";
	}
	
	@RequestMapping("/favorites")
	public String favorites() throws Exception {
		return "webmanual/favorites";
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
		return "login";
	}
}
