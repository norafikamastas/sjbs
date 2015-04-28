package com.ika.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.ika.entity.Pengguna;


public interface PenggunaRepo extends CrudRepository<Pengguna, Long>{

	@Query("select p from Pengguna p " +
			"left join fetch p.idKodKategoriPengguna0 " +
			"left join fetch p.idKodBandar0 " +
			"left join fetch p.idKodNegeri0 " +
			"left join fetch p.idGambar0 " +
			"where p.idPengguna = ?")
	Pengguna findByIdPengguna(String username);

}
