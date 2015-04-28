package com.ika.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.ika.entity.Keperluan;

public interface KeperluanRepo extends CrudRepository<Keperluan, Long>{

	List<Keperluan> findByTahun(Long tahun);

}
