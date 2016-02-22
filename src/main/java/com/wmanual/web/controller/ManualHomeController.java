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
	
	@RequestMapping("/brands")
	public String brands(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "brands");
		return "webmanual/brands";
	}
	
	/*
	 * Pages for electric manuals
	 */
	//电视
	@RequestMapping("/tv")
	public String tv(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "tv");
		return "manuals/tv";
	}
	//冰箱
	@RequestMapping("/fridge")
	public String fridge(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "fridge");
		return "manuals/fridge";
	}
	//空调
	@RequestMapping("/aircondition")
	public String aircondition(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "aircondition");
		return "manuals/aircondition";
	}
	//洗衣机
	@RequestMapping("/washer")
	public String washer(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "washer");
		return "manuals/washer";
	}
	//热水器
	@RequestMapping("/waterheating")
	public String waterheating(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "waterheating");
		return "manuals/waterheating";
	}
	//空气净化器
	@RequestMapping("/airpurifier")
	public String airpurifier(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "airpurifier");
		return "manuals/airpurifier";
	}
	//净水器
	@RequestMapping("/waterpurifier")
	public String waterpurifier(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "waterpurifier");
		return "manuals/waterheating";
	}
	//饮水器
	@RequestMapping("/waterdispenser")
	public String waterdispenser(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "waterdispenser");
		return "manuals/waterdispenser";
	}
	//加湿器
	@RequestMapping("/humidifier")
	public String humidifier(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "humidifier");
		return "manuals/humidifier";
	}
	//电暖器
	@RequestMapping("/electricheater")
	public String electricheater(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "electricheater");
		return "manuals/electricheater";
	}
	//挂烫机
	@RequestMapping("/garmentsteamer")
	public String garmentsteamer(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "garmentsteamer");
		return "manuals/garmentsteamer";
	}
	//电饭煲
	@RequestMapping("/electriccooker")
	public String electriccooker(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "electriccooker");
		return "manuals/electriccooker";
	}
	//微波炉
	@RequestMapping("/microwaveoven")
	public String microwaveoven(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "microwaveoven");
		return "manuals/microwaveoven";
	}
	//豆浆机
	@RequestMapping("/beanjuicemaker")
	public String beanjuicemaker(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "beanjuicemaker");
		return "manuals/beanjuicemaker";
	}
	//豆浆机
	@RequestMapping("/Juicer")
	public String Juicer(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "Juicer");
		return "manuals/Juicer";
	}
	//电水壶
	@RequestMapping("/electrickettle")
	public String electrickettle(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "electrickettle");
		return "manuals/electrickettle";
	}
	//剃须刀
	@RequestMapping("/razor")
	public String razor(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "razor");
		return "manuals/razor";
	}
	//剃毛器
	@RequestMapping("/shaver")
	public String shaver(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "shaver");
		return "manuals/shaver";
	}
	//电吹风
	@RequestMapping("/hairdryer")
	public String hairdryer(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "hairdryer");
		return "manuals/hairdryer";
	}
	//理发器
	@RequestMapping("/haircut")
	public String haircut(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "haircut");
		return "manuals/haircut";
	}
	//电动牙刷
	@RequestMapping("/electrictoothbrush")
	public String electrictoothbrush(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "electrictoothbrush");
		return "manuals/electrictoothbrush";
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
	
	@RequestMapping("/favorites")
	public String favorites(HttpServletRequest request) throws Exception {
		logger.info("[{}] visit wmanual for {} page", request.getRemoteAddr(), "favorites");
		return "webmanual/favorites";
	}
	
	@RequestMapping("/custom")
	public String custom() throws Exception {
		logger.info(condition.getTimeline());
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
	
	@RequestMapping("/details")
	public String details() throws Exception {
		return "webmanual/details";
	}
	
	@RequestMapping("/aboutus")
	public String aboutus() throws Exception {
		return "static/aboutus";
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
