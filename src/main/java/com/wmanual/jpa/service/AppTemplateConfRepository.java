package com.wmanual.jpa.service;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

import com.wmanual.jpa.domain.AppTemplate;
import com.wmanual.jpa.domain.AppTemplateConf;


@Service
public interface AppTemplateConfRepository extends CrudRepository<AppTemplateConf, Long> {

}
