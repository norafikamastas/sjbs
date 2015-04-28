package com.ika.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.envers.Audited;
import org.hibernate.validator.Length;
import org.hibernate.validator.NotNull;


@SuppressWarnings("serial")
@Entity
@Table(name="users")
@Audited
public class Users implements java.io.Serializable{
	
	@Id
	@Column(name="ID", unique=true, nullable=false)
	private Long id;
	
	@NotNull
	@Length(max=100, message="{validator.long}")
	@Column(name="USERNAME", unique=true, nullable=false)
	private String username;
	
	@NotNull
	@Length(max=4000, message="{validator.long}")
	@Column(name="PASSWORD", unique=true, nullable=false)
	private String password;
	
	@NotNull
	@Length(max=45, message="{validator.long}")
	@Column(name="ROLE", unique=true, nullable=false)
	private String role;
	
	public Users(Long id, String username, String password, String role){
		this.id = id;
		this.username = username;
		this.password = password;
		this.role =role;
	}
	
	public Users(){
		//default contructors
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	
	
	

}
