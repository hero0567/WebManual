package com.wmanual.jpa.service;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

import com.wmanual.jpa.domain.ManualServiceDomain;


@Service
public interface ManualServiceRepository extends CrudRepository<ManualServiceDomain, Long> {
	
	public List<ManualServiceDomain> findByBrand(String brand);	

}