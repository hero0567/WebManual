package com.wmanual.jpa.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Service;

import com.wmanual.beans.MenuBean;
import com.wmanual.beans.SearchBean;
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
	
	@Query(value = "select new com.wmanual.beans.MenuBean(count(hb), subType) from HandBookDomain hb group by hb.subType")
	public List<MenuBean> findMenu();
	
	// Pageable
	@Query("from HandBookDomain where name like %?1%")
	public List<HandBookDomain> findByNameLikePage(String name, Pageable pageable);
	
	@Query("from HandBookDomain")
	public Page<HandBookDomain> findSize(Pageable pageable);
	
	@Query("from HandBookDomain where type = ?")
	public List<HandBookDomain> findByTypePage(String type, Pageable pageable);
	
	@Query("from HandBookDomain where type = ?1 and name like %?2%")
	public List<HandBookDomain> findByTypeAndNameLikePage(String type, String name, Pageable pageable);
	
	@Query("from HandBookDomain where type = ?1 and subType = ?2  and name like %?3%")
	public List<HandBookDomain> findByTypeAndSubTypeAndNameLikePage(String type, String subType, String name, Pageable pageable);
	
	@Query("from HandBookDomain where type = ? and subType = ?")
	public List<HandBookDomain> findByTypeAndSubTypePage(String type, String subType, Pageable pageable);
	
	// Count	
	@Query("select new com.wmanual.beans.SearchBean(count(hb)) from HandBookDomain hb where name like %?1%" )
	public List<SearchBean> countByNameLike(String key);
	
	@Query("select new com.wmanual.beans.SearchBean(count(hb), subType) from HandBookDomain hb where name like %?1% group by hb.subType  order by count(hb) desc")
	public List<SearchBean> countByNameLikeGroup(String key);
		
	@Query("select new com.wmanual.beans.SearchBean(count(hb)) from HandBookDomain hb where type = ?1 and name like %?2%")
	public List<SearchBean> countByTypeAndNameLike(String type, String name);
		
	@Query("select new com.wmanual.beans.SearchBean(count(hb)) from HandBookDomain hb where type = ?1 and subType = ?2  and name like %?3%")
	public List<SearchBean> countByTypeAndSubTypeAndNameLike(String type, String subType, String name);
	
}