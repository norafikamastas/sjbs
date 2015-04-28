package com.ika.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ika.entity.KodBandar;

@Repository
public interface KodBandarRepo extends CrudRepository<KodBandar, Long> {

	List<KodBandar> findByIdNegeri(Long idKodNegeri);
	

}
