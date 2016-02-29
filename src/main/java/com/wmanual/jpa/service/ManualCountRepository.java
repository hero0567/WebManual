package com.wmanual.jpa.service;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Service;

import com.wmanual.beans.CountBean;
import com.wmanual.jpa.domain.ManualDomain;

@Service
public interface ManualCountRepository extends PagingAndSortingRepository<ManualDomain, Long> {
	
	@Query("select new com.wmanual.beans.CountBean(count(hb), brand) "
			+ "from ManualDomain hb where (name like %?1% or brand like %?1%) and subtype like ?2 and brand like ?3  and productDate >= ?4 and productDate <= ?5 "
			+ "group by hb.brand  order by count(hb) desc")
	public List<CountBean> countGroupByBrand(String name, String subtype, String brand, long atime, long btime);
	
	
	@Query("select new com.wmanual.beans.CountBean(count(hb), subType, type) from ManualDomain hb where name like %?1% or brand like %?1% group by hb.subType  order by count(hb) desc")
	public List<CountBean> countGroupBySubType(String key);
	
	
	@Query("select count(hb) from ManualDomain hb where hb.subType = ?1")
	public int countBySubtype(String subtype);
	
}