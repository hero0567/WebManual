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
public class ManualTypeController {
	
	private Logger logger = LoggerFactory.getLogger(getClass()); 
	
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private AuthorityRepository authorityRepository;
	@Autowired
	private EmailConfigure emailConfigure;
	
	@Autowired
	private ConditionConfigure condition;
	
	/*
	 * Pages for electric manuals
	 */
	//电视
	@RequestMapping("/tv")
	public String tv(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "tv");
		return "types/tv";
	}
	//冰箱
	@RequestMapping("/fridge")
	public String fridge(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "fridge");
		return "types/fridge";
	}
	//空调
	@RequestMapping("/aircondition")
	public String aircondition(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "aircondition");
		return "types/aircondition";
	}
	//洗衣机
	@RequestMapping("/washer")
	public String washer(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "washer");
		return "types/washer";
	}
	//热水器
	@RequestMapping("/waterheating")
	public String waterheating(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "waterheating");
		return "types/waterheating";
	}
	//空气净化器
	@RequestMapping("/airpurifier")
	public String airpurifier(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "airpurifier");
		return "types/airpurifier";
	}
	//净水器
	@RequestMapping("/waterpurifier")
	public String waterpurifier(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "waterpurifier");
		return "types/waterheating";
	}
	//饮水器
	@RequestMapping("/waterdispenser")
	public String waterdispenser(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "waterdispenser");
		return "types/waterdispenser";
	}
	//加湿器
	@RequestMapping("/humidifier")
	public String humidifier(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "humidifier");
		return "types/humidifier";
	}
	//电暖器
	@RequestMapping("/electricheater")
	public String electricheater(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "electricheater");
		return "types/electricheater";
	}
	//挂烫机
	@RequestMapping("/garmentsteamer")
	public String garmentsteamer(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "garmentsteamer");
		return "types/garmentsteamer";
	}
	//电饭煲
	@RequestMapping("/electriccooker")
	public String electriccooker(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "electriccooker");
		return "types/electriccooker";
	}
	//微波炉
	@RequestMapping("/microwaveoven")
	public String microwaveoven(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "microwaveoven");
		return "types/microwaveoven";
	}
	//豆浆机
	@RequestMapping("/beanjuicemaker")
	public String beanjuicemaker(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "beanjuicemaker");
		return "types/beanjuicemaker";
	}
	//榨汁机
	@RequestMapping("/juicer")
	public String juicer(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "juicer");
		return "types/juicermaker";
	}
	//电水壶
	@RequestMapping("/electrickettle")
	public String electrickettle(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "electrickettle");
		return "types/electrickettle";
	}
	//剃须刀
	@RequestMapping("/razor")
	public String razor(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "razor");
		return "types/razor";
	}
	//剃毛器
	@RequestMapping("/shaver")
	public String shaver(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "shaver");
		return "types/shaver";
	}
	//电吹风
	@RequestMapping("/hairdryer")
	public String hairdryer(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "hairdryer");
		return "types/hairdryer";
	}
	//理发器
	@RequestMapping("/haircut")
	public String haircut(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "haircut");
		return "types/haircut";
	}
	//电动牙刷
	@RequestMapping("/electrictoothbrush")
	public String electrictoothbrush(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "electrictoothbrush");
		return "types/electrictoothbrush";
	}	
}
