package com.wmanual.jpa.service;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Service;

import com.wmanual.jpa.domain.HandBookDomain;


@Service
public interface HandBookRepository extends PagingAndSortingRepository<HandBookDomain, Long> {
	
	public List<HandBookDomain> findByNameLike(String name);
	
	public List<HandBookDomain> findByType(String type);
	
	public List<HandBookDomain> findByTypeAndNameLike(String type, String name);
	
	public List<HandBookDomain> findByTypeAndSubType(String type, String subType);
	
	public List<HandBookDomain> findByTypeAndSubTypeAndNameLike(String type, String subType, String name);
		
	@Query("from HandBookDomain where type = ?")
	public List<HandBookDomain> findByTypeSize(String type, Pageable pageable);
	
	@Query("from HandBookDomain where type = ? and subType = ?")
	public List<HandBookDomain> findByTypeAndSubTypeSize(String type, String subType, Pageable pageable);

}