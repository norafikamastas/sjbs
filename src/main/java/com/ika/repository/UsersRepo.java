package com.ika.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ika.entity.Users;

@Repository
public interface UsersRepo extends CrudRepository<Users, Long>{

}
