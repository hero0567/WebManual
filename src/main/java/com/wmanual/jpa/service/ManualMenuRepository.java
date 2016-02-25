package com.wmanual.jpa.service;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Service;

import com.wmanual.jpa.domain.ManualBrandDomain;
import com.wmanual.jpa.domain.ManualDomain;
import com.wmanual.jpa.domain.ManualMenuDomain;

@Service
public interface ManualMenuRepository extends CrudRepository<ManualMenuDomain, Long> {
			
}