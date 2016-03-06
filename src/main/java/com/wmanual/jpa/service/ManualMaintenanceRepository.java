package com.wmanual.jpa.service;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Service;

import com.wmanual.jpa.domain.ManualMaintenanceDomain;

@Service
public interface ManualMaintenanceRepository extends PagingAndSortingRepository<ManualMaintenanceDomain, Long> {
	
	@Query("from ManualMaintenanceDomain hb where type = ? and subtype = ? and brand = ? order by hb.count desc")
	public List<ManualMaintenanceDomain> findBySubtypeTop(String type, String subType, String brand, Pageable pageable);
	
	
			
}