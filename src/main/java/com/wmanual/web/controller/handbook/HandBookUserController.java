package com.wmanual.web.controller.handbook;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


import com.wmanual.jpa.domain.User;
import com.wmanual.jpa.service.UserRepository;

@RestController
@RequestMapping(value = "/u")
public class HandBookUserController {

	@Autowired
	private UserRepository userRepository;
	
	@RequestMapping(value = "/{uname}")
	public ResponseEntity<String> add(@PathVariable("uname") String uname) throws Exception {

		User user = userRepository.findByUsername(uname);	
		
		if (user != null ){
			return new ResponseEntity<String>("", HttpStatus.BAD_REQUEST);
		}else{
			return new ResponseEntity<String>("", HttpStatus.OK);
		}
		
	}
}
