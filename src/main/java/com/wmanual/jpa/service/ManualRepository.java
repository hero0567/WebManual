package com.wmanual.jpa.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Service;

import com.wmanual.beans.MenuBean;
import com.wmanual.beans.CountBean;
import com.wmanual.jpa.domain.ManualDomain;

@Service
public interface ManualRepository extends PagingAndSortingRepository<ManualDomain, Long> {

	@Query("from ManualDomain where name like %?1%")
	public List<ManualDomain> findByNameLike(String name);
	
	@Query("from ManualDomain where name like %?1% or brand like %?1%")
	public List<ManualDomain> findByNameOrBrandLike(String name);

	public List<ManualDomain> findByType(String type);

	@Query("from ManualDomain where type = ?1 and name like %?2%")
	public List<ManualDomain> findByTypeAndNameLike(String type, String name);

	public List<ManualDomain> findByTypeAndSubType(String type, String subType);
	
	public List<ManualDomain> findByTypeAndSubTypeAndBrand(String type, String subType, String brand);

	@Query("from ManualDomain where type = ?1 and subType = ?2  and name like %?3%")
	public List<ManualDomain> findByTypeAndSubTypeAndNameLike(String type, String subType, String name);

	@Query(value = "select b.count, b.subType, a.sequence from handbook_type a,"
			+ "(select subType,count(1) count from handbook group by subType) b "
			+ "where a.name = b.subType", nativeQuery = true)
	public List<Object[]> findMenu();

	// Pageable
	@Query("from ManualDomain where name like %?1%")
	public List<ManualDomain> findByNameLikePage(String name, Pageable pageable);
	
	@Query("from ManualDomain where name like %?1% or brand like %?1%")
	public List<ManualDomain> findByNameOrBrandLikePage(String name, Pageable pageable);

	@Query("from ManualDomain")
	public Page<ManualDomain> findSize(Pageable pageable);

	@Query("from ManualDomain where type = ?")
	public List<ManualDomain> findByTypePage(String type, Pageable pageable);

	@Query("from ManualDomain where type = ?1 and name like %?2%")
	public List<ManualDomain> findByTypeAndNameLikePage(String type, String name, Pageable pageable);

	@Query("from ManualDomain where type = ?1 and subType = ?2  and name like %?3%")
	public List<ManualDomain> findByTypeAndSubTypeAndNameLikePage(String type, String subType, String name,
			Pageable pageable);

	@Query("from ManualDomain where type = ? and subType = ?")
	public List<ManualDomain> findByTypeAndSubTypePage(String type, String subType, Pageable pageable);
	
	@Query("from ManualDomain where type = ? and subType = ? and brand = ?")
	public List<ManualDomain> findByTypeAndSubTypeAndBrandPage(String type, String subType, String brand, Pageable pageable);

	// Count
	@Query("select new com.wmanual.beans.CountBean(count(hb)) from ManualDomain hb where name like %?1%")
	public List<CountBean> countByNameLike(String key);
	
	@Query("select new com.wmanual.beans.CountBean(count(hb)) from ManualDomain hb where subType = ?1")
	public List<CountBean> countBySubType(String key);

	@Query("select new com.wmanual.beans.CountBean(count(hb), subType) from ManualDomain hb where name like %?1% group by hb.subType  order by count(hb) desc")
	public List<CountBean> countByNameLikeGroupSubType(String key);
	
	@Query("select new com.wmanual.beans.CountBean(count(hb), brand) from ManualDomain hb where subType = ?1 group by hb.brand  order by count(hb) desc")
	public List<CountBean> countBySubTypeGroupBrand(String key);

	@Query("select new com.wmanual.beans.CountBean(count(hb)) from ManualDomain hb where type = ?1 and name like %?2%")
	public List<CountBean> countByTypeAndNameLike(String type, String name);

	@Query("select new com.wmanual.beans.CountBean(count(hb)) from ManualDomain hb where type = ?1 and subType = ?2  and name like %?3%")
	public List<CountBean> countByTypeAndSubTypeAndNameLike(String type, String subType, String name);

}