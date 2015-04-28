package com.ika.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.ika.entity.Pelajar;


public interface PelajarRepo extends CrudRepository<Pelajar, Long>{
	
	@Query("select p from Pelajar p where p.noPengenalan = ?")
	Pelajar findByNoPengenalan(String nokp);

}
