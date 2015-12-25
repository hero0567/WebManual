package com.crossp.jpa.service;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

import com.crossp.jpa.domain.HandBookFavoriteDomain;


@Service
public interface HandBookFavoriteRepository extends CrudRepository<HandBookFavoriteDomain, Long> {
	
	public List<HandBookFavoriteDomain> findByUserId(Long id);	

}