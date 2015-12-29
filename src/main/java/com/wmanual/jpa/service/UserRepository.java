package com.wmanual.jpa.service;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

import com.wmanual.jpa.domain.User;


@Service
public interface UserRepository extends CrudRepository<User, Long> {

	public User findByUsername(String username);
}
