package com.rays.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rays.entity.Dept;
import com.rays.repository.HomeRepo;

@Service
public class HomeServiceImpl implements HomeService {
	
	private final HomeRepo homeRepo;
	
	@Autowired
	public HomeServiceImpl(final HomeRepo homeRepo){
		this.homeRepo = homeRepo; 
	}

	
	public Dept findByDeptNo(long deptno) {
		// TODO Auto-generated method stub
		return homeRepo.findOne(deptno);
	}

}
