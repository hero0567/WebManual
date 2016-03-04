package com.wmanual.jpa.service;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Service;

import com.wmanual.jpa.domain.ManualBrandDomain;
import com.wmanual.jpa.domain.ManualDomain;

@Service
public interface ManualBrandRepository extends PagingAndSortingRepository<ManualBrandDomain, Long> {
	
	public ManualBrandDomain findByName(String name);
			
}