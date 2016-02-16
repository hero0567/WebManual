//package com.wmanual.configure;
//
//import org.springframework.boot.context.embedded.FilterRegistrationBean;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//
//@Configuration
//public class FilterConfigure {
//	
//	@Bean
//	public FilterRegistrationBean corsFilter() {
//	    FilterRegistrationBean registration = new FilterRegistrationBean();
//	    CORSFilter corsFilter = new CORSFilter();
//	    registration.setFilter(corsFilter);
//	    registration.addUrlPatterns("/*");
//	    return registration;
//	}
//}
