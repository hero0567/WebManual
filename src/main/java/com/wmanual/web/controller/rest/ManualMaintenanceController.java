package com.wmanual.web.controller.rest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.wmanual.jpa.domain.ManualMaintenanceDomain;
import com.wmanual.jpa.service.ManualMaintenanceRepository;

@RestController
@RequestMapping(value = "/mt")
public class ManualMaintenanceController {

	private Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private ManualMaintenanceRepository mtRepository;
	
	
	@RequestMapping("/top")
	public Iterable<ManualMaintenanceDomain> findTop(
			@RequestParam(value = "type", required = true, defaultValue = "") String type,
			@RequestParam(value = "subtype", required = true, defaultValue = "") String subtype,
			@RequestParam(value = "brand", required = true, defaultValue = "") String brand,
			@RequestParam(value = "size", required = false, defaultValue = "10") int size) throws Exception {
		Pageable page = new PageRequest(0, size);
		mtRepository.findBySubtypeTop(type, subtype, brand, page);
		
		return mtRepository.findBySubtypeTop(type, subtype, brand, page);
	}
	
}
