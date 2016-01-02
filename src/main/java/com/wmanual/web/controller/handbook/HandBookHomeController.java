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

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HandBookHomeController {
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

	@RequestMapping("/search")
	public String search(Model model, @RequestParam(value = "type", required = false) String type,
			@RequestParam(value = "key", required = false) String key) throws Exception {
		model.addAttribute("type", type);
		model.addAttribute("key", key);
		return "webmanual/searchResult";
	}

	@RequestMapping("/signin")
	public String signin() throws Exception {
		return "webmanual/signin";
	}
}
