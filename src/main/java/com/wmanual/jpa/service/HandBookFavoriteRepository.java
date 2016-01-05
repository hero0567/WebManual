package com.wmanual.jpa.service;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

import com.wmanual.beans.CountBean;
import com.wmanual.jpa.domain.HandBookFavoriteDomain;


@Service
public interface HandBookFavoriteRepository extends CrudRepository<HandBookFavoriteDomain, Long> {
	
	public List<HandBookFavoriteDomain> findByUserId(Long id);	
	
	// Count	
	@Query("select new com.wmanual.beans.CountBean(count(hbf)) from HandBookFavoriteDomain hbf where hbf.user.id = ?1" )
	public List<CountBean> countByUID(long id);
	
//	@Query("select new com.wmanual.beans.CountBean(count(hb), subType) from HandBookFavoriteDomain hb where name like %?1% group by hb.subType  order by count(hb) desc")
//	public List<CountBean> countByNameLikeGroup(String key);
//		
//	@Query("select new com.wmanual.beans.CountBean(count(hb)) from HandBookFavoriteDomain hb where type = ?1 and name like %?2%")
//	public List<CountBean> countByTypeAndNameLike(String type, String name);
//		
//	@Query("select new com.wmanual.beans.CountBean(count(hb)) from HandBookFavoriteDomain hb where type = ?1 and subType = ?2  and name like %?3%")
//	public List<CountBean> countByTypeAndSubTypeAndNameLike(String type, String subType, String name);

}