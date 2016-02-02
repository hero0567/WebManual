//package com.wmanual.configure;
//
//import javax.servlet.Filter;
//
//import org.apache.catalina.filters.CorsFilter;
//import org.springframework.boot.context.embedded.FilterRegistrationBean;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//
//@Configuration
//public class FilterConfigure {
//	
////	@Bean
////	public Filter characterEncodingFilter() {
////		CorsFilter corsFilter = new CorsFilter();
////		return corsFilter;
////	}
//	
//	@Bean
//	public FilterRegistrationBean myFilter() {
//		FilterRegistrationBean registration = new FilterRegistrationBean();
//		CorsFilter corsFilter = new CorsFilter();
//		registration.setFilter(corsFilter);
//		registration.addUrlPatterns("/*");
//		return registration;
//	}
//}
