//package com.wmanual.jpa.service;
//
//import java.util.List;
//
//import org.springframework.data.jpa.repository.Query;
//import org.springframework.data.repository.CrudRepository;
//import org.springframework.data.repository.NoRepositoryBean;
//import org.springframework.data.repository.Repository;
//import org.springframework.stereotype.Service;
//
//import com.wmanual.beans.MenuBean;
//
//
//@Service
//public interface MenuRepository extends CrudRepository<MenuBean, Long> {
//	
//	@Query("select count(1) count, subType from handbook group by subType")
//	public List<MenuBean> findMenu();
//	
//
//}