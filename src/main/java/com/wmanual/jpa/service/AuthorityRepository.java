package com.wmanual.jpa.service;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

import com.wmanual.jpa.domain.Authority;


@Service
public interface AuthorityRepository extends CrudRepository<Authority, Long> {

}
