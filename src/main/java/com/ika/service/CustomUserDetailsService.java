package com.ika.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
  
@Service  
public class CustomUserDetailsService implements UserDetailsService {  
  
	private final UserService userService;
	
	@Autowired
	public CustomUserDetailsService(final UserService userService){
		this.userService = userService;
	}
  
    static final PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();  
  
    @SuppressWarnings({ "unchecked", "rawtypes" })
	@Override  
    public UserDetails loadUserByUsername(String j_username) throws UsernameNotFoundException {  
		
		
        Map<String, Object> userMap = userService.getUserByUsername(j_username);  
  
        //check if this user with this username exist, if not, throw an exception  
        // and stop the login process  
        if (userMap == null) {  
            throw new UsernameNotFoundException("User details not found with this username: " + j_username);  
        }  
  
        String username = (String) userMap.get("username");  
        String password = (String)userMap.get("password");
        String subrole;
        String role = (String) userMap.get("role");
        
        if(!role.equals("ROLE_ADMIN"))
        	subrole = (String) role.subSequence(0,9);
        else
        	subrole = role;
        
        List authList = new ArrayList();  
        authList.add(new SimpleGrantedAuthority(subrole));  
        
        User user = new User(username, password, authList);  
        return user;  
    }  
} 
