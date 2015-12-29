package com.wmanual.jpa.service;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

import com.wmanual.jpa.domain.AppItemArea;


@Service
public interface AppItemAreaRepository extends CrudRepository<AppItemArea, Long> {

}
