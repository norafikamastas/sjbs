package com.ika.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.ika.entity.Pengguna;
  
@Component
@Service("userService")  
public class UserService {  
	 
	private final LoginService loginService;
	
	@Autowired
	public UserService(final LoginService loginService){
		this.loginService = loginService;
	}
	
    public Map<String, Object> getUserByUsername(String username) { 
    	
    	Pengguna pengguna = loginService.findByUsername1(username);
    	
        Map<String, Object> userMap = null;  
        
        if(pengguna.equals(null)){
        	return null; 
        }else{
        	userMap = new HashMap<>();  
    	    userMap.put("username", pengguna.getIdPengguna());  
	        userMap.put("password", pengguna.getKatalaluan()); 
	        userMap.put("role", pengguna.getIdKodKategoriPengguna0().getPerihal()); 
        	return userMap;
        }
    }  
}
