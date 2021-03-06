package com.ika.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.envers.Audited;
import org.hibernate.validator.Length;
import org.hibernate.validator.NotNull;

/**
 * KodNegeri generated by iRays
 */
@SuppressWarnings("serial")
@Entity
@Table(name="kod_negeri")
@Audited
public class KodNegeri extends BaseEntity implements java.io.Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="SEQ_KODNEGERI")
	@SequenceGenerator(name="SEQ_KODNEGERI", sequenceName="SEQ_KODNEGERI", allocationSize=1)
	@Column(name="ID", unique=true, nullable=false)
	private Long id;
	
	@NotNull
	@Length(max=2, message="{validator.long}")
	@Column(name="KOD", length=2)
	private String kod;
	
	@NotNull
	@Length(max=40, message="{validator.long}")
	@Column(name="PERIHAL", length=40)
	private String perihal;

	public KodNegeri() {
	}

	public KodNegeri(Long id, String kod, String perihal) {
		this.id = id;
		this.kod = kod;
		this.perihal = perihal;
	}

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getKod() {
		return this.kod;
	}

	public void setKod(String kod) {
		this.kod = kod;
	}

	public String getPerihal() {
		return this.perihal;
	}

	public void setPerihal(String perihal) {
		this.perihal = perihal;
	}

}
