package com.ika.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.ika.entity.KodBandar;
import com.ika.repository.KodBandarRepo;

@Service
@Component
public class KodBandarServiceImpl implements KodBandarService{
	private final KodBandarRepo kodBandarRepo;
	
	@Autowired
	public KodBandarServiceImpl(final KodBandarRepo kodBandarRepo){
		this.kodBandarRepo = kodBandarRepo;
	}

	@Override
	public List<KodBandar> findByIdKodNegeri(Long idKodNegeri) {
		// TODO Auto-generated method stub
		return (List<KodBandar>) kodBandarRepo.findByIdNegeri(idKodNegeri);
	}


}
