package com.ika.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ika.entity.KodNegeri;

@Repository
public interface KodNegeriRepo extends CrudRepository<KodNegeri, Long>{
	
}
