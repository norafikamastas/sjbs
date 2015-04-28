package com.ika.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.ika.entity.KodKategoriPengguna;
import com.ika.repository.KodKategoriPenggunaRepo;

@Service
@Component
public class KodKategoriPenggunaServiceImpl implements KodKategoriPenggunaService{
	
	private final KodKategoriPenggunaRepo kodKategoriPenggunaRepo;
	
	@Autowired
	public KodKategoriPenggunaServiceImpl(final KodKategoriPenggunaRepo kodKategoriPenggunaRepo){
		this.kodKategoriPenggunaRepo = kodKategoriPenggunaRepo;
	}

	@Override
	public List<KodKategoriPengguna> findAll() {
		// TODO Auto-generated method stub
		return (List<KodKategoriPengguna>)kodKategoriPenggunaRepo.findAll();
	}

}
