package com.rays.entity;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;


@MappedSuperclass
public class Dept{
	
	@Id
	private Long deptno;
	
	@Column(name = "dname")
	private String dname;
	
	@Column(name = "loc")
	private String loc;
	
	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public void setDeptno(Long deptno) {
        this.deptno = deptno;
    }

    public Long getDeptno() {
        return deptno;
    }

    public boolean isNew() {
        return (this.deptno == null);
    }

	public String getLoc() {
		return loc;
	}

	public void setLoc(String loc) {
		this.loc = loc;
	}

}
