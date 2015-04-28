package com.ika.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ika.entity.KodKategoriPengguna;

@Repository
public interface KodKategoriPenggunaRepo extends CrudRepository<KodKategoriPengguna, Long> {

}
