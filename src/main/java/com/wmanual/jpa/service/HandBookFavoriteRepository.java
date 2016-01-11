package com.wmanual.jpa.service;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wmanual.beans.CountBean;
import com.wmanual.jpa.domain.HandBookFavoriteDomain;


@Service
public interface HandBookFavoriteRepository extends CrudRepository<HandBookFavoriteDomain, Long> {
	
	public List<HandBookFavoriteDomain> findByUserId(Long id);	
	
	@Query("from HandBookFavoriteDomain hbf where hbf.user.id = ?")
	public List<HandBookFavoriteDomain> findByUserIdPage(Long id, Pageable pageable);
	
	public List<HandBookFavoriteDomain> findByUserIdAndHandBookSubType(Long id, String subType);
	
	@Query("from HandBookFavoriteDomain hbf where hbf.user.id = ? and hbf.handBook.subType = ?")
	public List<HandBookFavoriteDomain> findByUserIdAndHandBookSubTypePage(Long id, String subType, Pageable pageable);
	
	@Transactional
	@Modifying
	@Query("delete from HandBookFavoriteDomain hbf where hbf.user.id = ? and hbf.handBook.id = ?")
	public void deleteByUIDAndHBID(Long uid, Long hbid);
	
	// Count	
	@Query("select new com.wmanual.beans.CountBean(count(hbf)) from HandBookFavoriteDomain hbf where hbf.user.id = ?1" )
	public List<CountBean> countByUID(long id);
	
	@Query("select new com.wmanual.beans.CountBean(count(hbf), hbf.handBook.subType) from HandBookFavoriteDomain hbf where hbf.user.id = ?1 group by hbf.handBook.subType  order by count(hbf) desc")
	public List<CountBean> countByUIDGroup(long id);

}