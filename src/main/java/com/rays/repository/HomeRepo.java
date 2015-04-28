package com.rays.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.rays.entity.Dept;

@Repository
public interface HomeRepo extends CrudRepository<Dept,Long> {

}
