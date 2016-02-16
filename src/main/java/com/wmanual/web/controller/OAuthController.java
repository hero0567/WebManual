package com.wmanual.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/oauth")
public class OAuthController {
	
	
	
	@RequestMapping("/1")
	public String service() throws ServletException, IOException {  
        return "this is from 1";
    }  
	
	@RequestMapping("/2")
	public String service1() throws ServletException, IOException {  
        return "this is from 2";
    } 

}
