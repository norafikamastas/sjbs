package com.ika.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.envers.Audited;
import org.hibernate.validator.Length;
import org.hibernate.validator.NotNull;

/**
 * KodBandar generated by iRays
 */

@SuppressWarnings("serial")
@Entity
@Table(name="kod_bandar")
@Audited
public class KodBandar extends BaseEntity implements java.io.Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="SEQ_KODBANDAR")
	@SequenceGenerator(name="SEQ_KODBANDAR", sequenceName="SEQ_KODBANDAR", allocationSize=1)
	@Column(name="ID", unique=true, nullable=false)
	private Long id;
	
	@NotNull
	@Length(max=6, message="{validator.long}")
	@Column(name="KOD", length=6)
	private String kod;
	
	@NotNull
	@Length(max=40, message="{validator.long}")
	@Column(name="PERIHAL", length=40)
	private String perihal;
	
	@Column(name="ID_NEGERI")
	private Long idNegeri;

	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="ID_NEGERI", insertable=false, updatable=false)
	private KodNegeri idKodNegeri0;
	

	public KodBandar() {
	}

	public KodBandar(Long id, KodNegeri idKodNegeri0, String kod, String perihal, Long idNegeri) {
		this.id = id;
		this.setIdKodNegeri0(idKodNegeri0);
		this.kod = kod;
		this.perihal = perihal;
		this.setIdNegeri(idNegeri);
	}

	public Long getId() {
		return this.id;
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

	public Long getIdNegeri() {
		return idNegeri;
	}

	public void setIdNegeri(Long idNegeri) {
		this.idNegeri = idNegeri;
	}

	public KodNegeri getIdKodNegeri0() {
		return idKodNegeri0;
	}

	public void setIdKodNegeri0(KodNegeri idKodNegeri0) {
		this.idKodNegeri0 = idKodNegeri0;
	}

}
