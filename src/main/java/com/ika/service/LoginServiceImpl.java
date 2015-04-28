package com.ika.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ika.entity.Pengguna;
import com.ika.repository.PenggunaRepo;

@Service
public class LoginServiceImpl implements LoginService {
	
	private final PenggunaRepo penggunaRepo;
	
	@Autowired
	public LoginServiceImpl(final PenggunaRepo penggunaRepo){
		this.penggunaRepo = penggunaRepo;
	}

	@Override
	public Pengguna findByUsername1(String username) {
		// TODO Auto-generated method stub
		return penggunaRepo.findByIdPengguna(username);
	}
	

}
