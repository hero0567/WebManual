package com.wmanual.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wmanual.utils.SecurityCodeUtil;

@Controller
@RequestMapping(value = "/sec/img")
public class SecurityCodeController {
	
	
	//TODO : use UUID token instead of session
	
	@RequestMapping("")
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
        response.setHeader("Pragma", "No-cache");  
        response.setHeader("Cache-Control", "no-cache");  
        response.setDateHeader("Expires", 0);  
        response.setContentType("image/jpeg");  
          
        //生成随机字串  
        String verifyCode = SecurityCodeUtil.generateVerifyCode(4);  
        //存入会话session  
        HttpSession session = request.getSession(true);  
        session.setAttribute("rand", verifyCode.toLowerCase());  
        //生成图片  
        int w = 200, h = 80;  
        SecurityCodeUtil.outputImage(w, h, response.getOutputStream(), verifyCode);  
    }  
	
	@RequestMapping("/check")
	public ResponseEntity<String> check(HttpServletRequest request, @RequestParam(value = "code") String code) throws ServletException, IOException {  

		HttpSession session = request.getSession(true); 
		String rand = (String) session.getAttribute("rand");
		
		if (rand.equalsIgnoreCase(code)){
			return new ResponseEntity<String>("", HttpStatus.OK);
		}else{
			return new ResponseEntity<String>("", HttpStatus.BAD_REQUEST);
		}
    }  

}
