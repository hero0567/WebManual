package com.wmanual.jpa.service;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

import com.wmanual.jpa.domain.AppTemplate;


@Service
public interface AppTemplateRepository extends CrudRepository<AppTemplate, Long> {

}
