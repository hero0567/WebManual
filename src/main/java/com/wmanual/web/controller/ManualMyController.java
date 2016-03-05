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
@RequestMapping(value = "/my")
public class ManualMyController {
	
	private Logger logger = LoggerFactory.getLogger(getClass()); 
	
	
	@RequestMapping("/selfinfo")
	public String selfinfo(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "selfinfo");
		return "my/selfinfo";
	}
	
	@RequestMapping("/favorites")
	public String favorites(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "favorites");
		return "my/favorites";
	}
}
