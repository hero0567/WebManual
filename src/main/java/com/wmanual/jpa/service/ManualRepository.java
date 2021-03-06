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

	@Query("from ManualDomain where name like %?1% or brand like %?1%")
	public List<ManualDomain> findByNameOrBrandLike(String name);

	public List<ManualDomain> findByType(String type);

	public List<ManualDomain> findByTypeAndSubType(String type, String subType);

	public List<ManualDomain> findByTypeAndSubTypeAndProductDate(String type, String subType, long time);

	public List<ManualDomain> findByTypeAndSubTypeAndProductDateLessThanEqual(String type, String subType, long time);

	public List<ManualDomain> findByTypeAndSubTypeAndBrand(String type, String subType, String brand);

	public List<ManualDomain> findByTypeAndSubTypeAndBrandAndProductDate(String type, String subType, String brand,
			long time);

	public List<ManualDomain> findByTypeAndSubTypeAndBrandAndProductDateLessThanEqual(String type, String subType,
			String brand, long time);

	@Query(value = "select a.type, a.typeseq, b.subType, a.sequence, b.count,a.url from wmanual_type a, "
			+ "(select subType,count(1) count from wmanual group by subType, type) b "
			+ "where a.name = b.subType order by a.typeseq, a.sequence ", nativeQuery = true)
	public List<Object[]> findMenu();
	
	@Query(value = "select distinct brand from wmanual where subtype = ?", nativeQuery = true)
	public List<Object[]> findBrandBySubtype(String subtype);
	
	@Query(value = "select distinct brand from wmanual where ebrand like %?1% or brand like %?1% or subtype like %?1% or name like %?1%", nativeQuery = true)
	public List<Object[]> findBrandBySearchKey(String key);
	
	@Query(value = "select distinct brand from wmanual where subtype = ?1 and (ebrand like %?1% or brand like %?2% or name like %?2%)", nativeQuery = true)
	public List<Object[]> findBrandByBrandAndSearchKey(String subtype, String key);
	
	@Query(value = "select distinct subtype from wmanual where brand = ?", nativeQuery = true)
	public List<Object[]> findSubTypeByBrand(String brand);
	
	@Query(value = "select distinct subtype from wmanual where ebrand like %?1% or brand like %?1% or subtype like %?1% or name like %?1%", nativeQuery = true)
	public List<Object[]> findSubTypeBySearchKey(String key);
	
	@Query(value = "select distinct subtype from wmanual where brand = ?1 and (subtype like %?2% or name like %?2%)", nativeQuery = true)
	public List<Object[]> findSubTypeByBrandAndSearchKey(String brand, String key);

	// Pageable
	@Query("from ManualDomain where type = ?")
	public List<ManualDomain> findByTypePage(String type, Pageable pageable);

	@Query("from ManualDomain where type = ? and subType = ?")
	public List<ManualDomain> findByTypeAndSubTypePage(String type, String subType, Pageable pageable);

	@Query("from ManualDomain where type = ? and subType = ? and productDate <= ?")
	public List<ManualDomain> findByTypeAndSubTypeTimeBeforePage(String type, String subType, long time,
			Pageable pageable);

	@Query("from ManualDomain where type = ? and subType = ? and productDate = ?")
	public List<ManualDomain> findByTypeAndSubTypeTimePage(String type, String subType, long time, Pageable pageable);

	@Query("from ManualDomain where type = ? and subType = ? and brand = ?")
	public List<ManualDomain> findByTypeAndSubTypeAndBrandPage(String type, String subType, String brand,
			Pageable pageable);

	@Query("from ManualDomain where type = ? and subType = ? and brand = ? and productDate <= ?")
	public List<ManualDomain> findByTypeAndSubTypeAndBrandAndTimeBeforePage(String type, String subType, String brand,
			long time, Pageable pageable);

	@Query("from ManualDomain where type = ? and subType = ? and brand = ? and productDate = ?")
	public List<ManualDomain> findByTypeAndSubTypeAndBrandAndTimePage(String type, String subType, String brand,
			long time, Pageable pageable);
	
	//Refactory 
	@Query("from ManualDomain hb where (name like %?1% or brand like %?1%) and subtype like ?2 and brand like ?3  "
			+ "and productDate >= ?4 and productDate <= ?5 ")
	public List<ManualDomain> findByNameSubtypeBrandTime(String name, String subtype, String brand, long atime, long btime,
			Pageable pageable);
	
	@Query("from ManualDomain hb where (name like %?1% or brand like %?1%) and type = ?2 and subtype like ?3 and brand like ?4  "
			+ "and productDate >= ?5 and productDate <= ?6 ")
	public List<ManualDomain> findByNameTypeSubtypeBrandTime(String name, String type, String subtype, String brand, long atime, long btime,
			Pageable pageable);
}