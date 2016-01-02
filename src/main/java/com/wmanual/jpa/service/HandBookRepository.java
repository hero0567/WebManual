package com.wmanual.jpa.service;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Service;

import com.wmanual.beans.MenuBean;
import com.wmanual.jpa.domain.HandBookDomain;


@Service
public interface HandBookRepository extends PagingAndSortingRepository<HandBookDomain, Long> {
	
	@Query("from HandBookDomain where name like %?1%")
	public List<HandBookDomain> findByNameLike(String name);
	
	public List<HandBookDomain> findByType(String type);
	
	@Query("from HandBookDomain where type = ?1 and name like %?2%")
	public List<HandBookDomain> findByTypeAndNameLike(String type, String name);
	
	public List<HandBookDomain> findByTypeAndSubType(String type, String subType);
	
	@Query("from HandBookDomain where type = ?1 and subType = ?2  and name like %?3%")
	public List<HandBookDomain> findByTypeAndSubTypeAndNameLike(String type, String subType, String name);
		
	@Query("from HandBookDomain where type = ?")
	public List<HandBookDomain> findByTypeSize(String type, Pageable pageable);
	
	@Query("from HandBookDomain where type = ? and subType = ?")
	public List<HandBookDomain> findByTypeAndSubTypeSize(String type, String subType, Pageable pageable);
	
	@Query(value = "select new com.wmanual.beans.MenuBean(count(hb), subType) from HandBookDomain hb group by hb.subType")
	public List<MenuBean> findMenu();

}