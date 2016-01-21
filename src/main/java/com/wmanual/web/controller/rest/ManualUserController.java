package com.wmanual.web.controller.rest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;



import com.wmanual.jpa.domain.User;
import com.wmanual.jpa.service.UserRepository;

@RestController
@RequestMapping(value = "/u")
public class ManualUserController {

	private Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private UserRepository userRepository;
	
	@RequestMapping
	public ResponseEntity<User> check(@RequestParam(value = "uname") String uname) throws Exception {

		User user = userRepository.findByUsername(uname);	
		if (user != null ){
			return new ResponseEntity<User>(user, HttpStatus.OK);			
		}else{
			return new ResponseEntity<User>(HttpStatus.NOT_FOUND);
		}
	}
	
	@RequestMapping("/{id}")
	public User add(@PathVariable("id") long id) throws Exception {
		User user = userRepository.findOne(id);
		return user;
	}
}
