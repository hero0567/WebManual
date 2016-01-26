package com.wmanual.jpa.service;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Service;

import com.wmanual.beans.CountBean;
import com.wmanual.jpa.domain.ManualDomain;

@Service
public interface ManualCountRepository extends PagingAndSortingRepository<ManualDomain, Long> {
	
	// Count
	@Query("select new com.wmanual.beans.CountBean(count(hb)) from ManualDomain hb where name like %?1% or brand like %?1% ")
	public List<CountBean> countByNameLike(String key);
	
	@Query("select new com.wmanual.beans.CountBean(count(hb)) from ManualDomain hb where subType = ?1")
	public List<CountBean> countBySubType(String key);
	
	@Query("select new com.wmanual.beans.CountBean(count(hb)) from ManualDomain hb where subType = ?1 and productDate = ?2")
	public List<CountBean> countBySubTypeAndTime(String key, long time);
	
	@Query("select new com.wmanual.beans.CountBean(count(hb)) from ManualDomain hb where subType = ?1 and productDate <= ?2")
	public List<CountBean> countBySubTypeAndTimeBefore(String key, long time);

	@Query("select new com.wmanual.beans.CountBean(count(hb), subType) from ManualDomain hb where name like %?1% or brand like %?1% group by hb.subType  order by count(hb) desc")
	public List<CountBean> countByNameLikeGroupSubType(String key);
	
	@Query("select new com.wmanual.beans.CountBean(count(hb), brand) from ManualDomain hb where subType = ?1 group by hb.brand  order by count(hb) desc")
	public List<CountBean> countBySubTypeGroupBrand(String key);
	
	@Query("select new com.wmanual.beans.CountBean(count(hb), brand) from ManualDomain hb where subType = ?1 and productDate = ?2 group by hb.brand  order by count(hb) desc")
	public List<CountBean> countBySubTypeAndTimeGroupBrand(String key, long time);
	
	@Query("select new com.wmanual.beans.CountBean(count(hb), brand) from ManualDomain hb where subType = ?1 and productDate <= ?2 group by hb.brand  order by count(hb) desc")
	public List<CountBean> countBySubTypeAndTimeBeforeGroupBrand(String key, long time);

	@Query("select new com.wmanual.beans.CountBean(count(hb)) from ManualDomain hb where type = ?1 and name like %?2%")
	public List<CountBean> countByTypeAndNameLike(String type, String name);

	@Query("select new com.wmanual.beans.CountBean(count(hb)) from ManualDomain hb where type = ?1 and subType = ?2  and name like %?3%")
	public List<CountBean> countByTypeAndSubTypeAndNameLike(String type, String subType, String name);
	
	// search by name	
	@Query("select new com.wmanual.beans.CountBean(count(hb)) from ManualDomain hb where name like %?1% or brand like %?1% and productDate <= ?2")
	public List<CountBean> countByNameAndTimeBefore(String name, long time);
	
	@Query("select new com.wmanual.beans.CountBean(count(hb)) from ManualDomain hb where name like %?1% or brand like %?1% and productDate = ?2")
	public List<CountBean> countByNameAndTime(String name, long time);
	
	@Query("select new com.wmanual.beans.CountBean(count(hb)) from ManualDomain hb where name like %?1% or brand like %?1%")
	public List<CountBean> countByName(String name);
	
	@Query("select new com.wmanual.beans.CountBean(count(hb), brand) from ManualDomain hb where name like %?1% or brand like %?1%  and productDate <= ?2 group by hb.brand  order by count(hb) desc")
	public List<CountBean> countByNameAndTimeBeforeGroupBrand(String name, long time);
	
	@Query("select new com.wmanual.beans.CountBean(count(hb), brand) from ManualDomain hb where name like %?1% or brand like %?1%  and productDate = ?2 group by hb.brand  order by count(hb) desc")
	public List<CountBean> countByNameAndTimeGroupBrand(String name, long time);
	
	@Query("select new com.wmanual.beans.CountBean(count(hb), brand) from ManualDomain hb where name like %?1% or brand like %?1%  group by hb.brand  order by count(hb) desc")
	public List<CountBean> countByNameGroupBrand(String name);

	// search by more condition
	@Query("select new com.wmanual.beans.CountBean(count(hb), brand) "
			+ "from ManualDomain hb where (name like %?1% or brand like %?1%) and subtype like %?2% and brand like %?3%  and productDate >= ?4 and productDate <= ?5 "
			+ "group by hb.brand  order by count(hb) desc")
	public List<CountBean> countGroupByBrand(String name, String subtype, String brand, long atime, long btime);
	
	@Query("select new com.wmanual.beans.CountBean(count(hb), brand) "
			+ "from ManualDomain hb where (name like %?1% or brand like %?1%) and subtype like %?2% and brand like %?3%  and productDate >= ?4 and productDate <= ?5 "
			+ "group by hb.brand  order by count(hb) desc")
	public List<CountBean> countGroupBySubtype(String name, String brand, long atime, long btime);
	
}