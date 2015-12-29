package com.wmanual.jpa.service;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

import com.wmanual.jpa.domain.AppEventData;


@Service
public interface AppEventRepository extends CrudRepository<AppEventData, Long> {

}
