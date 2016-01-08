package com.wmanual.jpa.service;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

import com.wmanual.jpa.domain.HandBookServiceDomain;


@Service
public interface HandBookServiceRepository extends CrudRepository<HandBookServiceDomain, Long> {
	
	public List<HandBookServiceDomain> findByBrand(String brand);	

}