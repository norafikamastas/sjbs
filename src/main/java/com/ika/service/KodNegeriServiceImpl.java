package com.ika.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.ika.entity.KodNegeri;
import com.ika.repository.KodNegeriRepo;

@Service
@Component
public class KodNegeriServiceImpl implements KodNegeriService {
	
	private final KodNegeriRepo kodNegeriRepo;
	
	@Autowired
	public KodNegeriServiceImpl(final KodNegeriRepo kodNegeriRepo){
		this.kodNegeriRepo = kodNegeriRepo;
	}

	@Override
	public List<KodNegeri> findAll() {
		// TODO Auto-generated method stub
		return (List<KodNegeri>)kodNegeriRepo.findAll() ;
	}

}
