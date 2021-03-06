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
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.wmanual.beans.UserPasswd;
import com.wmanual.jpa.domain.User;
import com.wmanual.jpa.service.UserRepository;

@RestController
@RequestMapping(value="/user")
public class UserController {

	private Logger logger = LoggerFactory.getLogger(getClass()); 
	@Autowired
	private UserRepository userRepository;
	
	@RequestMapping(value="/my")
	public @ResponseBody User findByName() {
		UserDetails principal = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		User user = userRepository.findByUsername(principal.getUsername());
		return user;
	}
	
	@RequestMapping(value="/passwd", method = RequestMethod.POST)
	public ResponseEntity<String> changePasswd(@RequestBody UserPasswd u) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		UserDetails principal = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		User user = userRepository.findByUsername(principal.getUsername());
		if (encoder.matches(u.getOldPwd(), user.getPassword())){
			user.setPassword(encoder.encode(u.getNewPwd()));
			userRepository.save(user);
		}else{
			return new ResponseEntity<String>("", HttpStatus.BAD_REQUEST);
		}
		return new ResponseEntity<String>("", HttpStatus.OK);
	}
}
