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
 * Pengguna generated by iRays
 */

@SuppressWarnings("serial")
@Entity
@Table(name="pelajar")
@Audited
public class Pelajar extends BaseEntity implements java.io.Serializable{
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="SEQ_PELAJAR")
	@SequenceGenerator(name="SEQ_PELAJAR", sequenceName="SEQ_PELAJAR", allocationSize=1)
	@Column(name="ID", unique=true, nullable=false)
	private Long id;
	
	@NotNull
	@Length(max=80, message="{validator.long}")
	@Column(name="NAMA", length=80)
	private String nama;
	
	@NotNull
	@Length(max=12, message="{validator.long}")
	@Column(name="NO_PENGENALAN", length=12)
	private String noPengenalan;
	
	@NotNull
	@Length(max=80, message="{validator.long}")
	@Column(name="PENJAGA", length=80)
	private String penjaga;
	
	@Length(max=14, message="{validator.long}")
	@Column(name="TELEFON_BIMBIT", length=14)
	private String telefonBimbit;
	
	@Length(max=100, message="{validator.long}")
	@Column(name="ALAMAT", length=100)
	private String alamat;
	
	@Length(max=10, message="{validator.long}")
	@Column(name="POSKOD", length=10)
	private String poskod;
	
	@Column(name="ID_KOD_NEGERI")
	private Long idKodNegeri;

	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="ID_KOD_NEGERI", insertable=false, updatable=false)
	private KodNegeri idKodNegeri0;
	
	@Column(name="ID_KOD_BANDAR")
	private Long idKodBandar;

	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="ID_KOD_BANDAR", insertable=false, updatable=false)
	private KodBandar idKodBandar0;
	

	@Column(name="TAHUN")
	private Long tahun;

	public Pelajar() {
	}
	
	public Pelajar(String nama,Long id, KodNegeri idKodNegeri0, KodBandar idKodBandar0,String noPengenalan,
			String telefonBimbit, String alamat, String poskod,Long idKodNegeri, Long idKodBandar, Long tahun) {
		this.id = id;
		this.setIdKodNegeri0(idKodNegeri0);
		this.setIdKodBandar0(idKodBandar0);
		this.nama = nama;
		this.noPengenalan = noPengenalan;
		this.telefonBimbit = telefonBimbit;
		this.alamat = alamat;
		this.poskod = poskod;
		this.setIdKodNegeri(idKodNegeri);
		this.setIdKodBandar(idKodBandar);
		this.tahun = tahun;
		
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNama() {
		return nama;
	}

	public void setNama(String nama) {
		this.nama = nama;
	}

	public String getNoPengenalan() {
		return noPengenalan;
	}

	public void setNoPengenalan(String noPengenalan) {
		this.noPengenalan = noPengenalan;
	}

	public String getPenjaga() {
		return penjaga;
	}

	public void setPenjaga(String penjaga) {
		this.penjaga = penjaga;
	}

	public String getTelefonBimbit() {
		return telefonBimbit;
	}

	public void setTelefonBimbit(String telefonBimbit) {
		this.telefonBimbit = telefonBimbit;
	}

	public String getAlamat() {
		return alamat;
	}

	public void setAlamat(String alamat) {
		this.alamat = alamat;
	}

	public String getPoskod() {
		return poskod;
	}

	public void setPoskod(String poskod) {
		this.poskod = poskod;
	}

	public Long getIdKodNegeri() {
		return idKodNegeri;
	}

	public void setIdKodNegeri(Long idKodNegeri) {
		this.idKodNegeri = idKodNegeri;
	}

	public KodNegeri getIdKodNegeri0() {
		return idKodNegeri0;
	}

	public void setIdKodNegeri0(KodNegeri idKodNegeri0) {
		this.idKodNegeri0 = idKodNegeri0;
	}

	public Long getIdKodBandar() {
		return idKodBandar;
	}

	public void setIdKodBandar(Long idKodBandar) {
		this.idKodBandar = idKodBandar;
	}

	public KodBandar getIdKodBandar0() {
		return idKodBandar0;
	}

	public void setIdKodBandar0(KodBandar idKodBandar0) {
		this.idKodBandar0 = idKodBandar0;
	}

	public Long getTahun() {
		return tahun;
	}

	public void setTahun(Long tahun) {
		this.tahun = tahun;
	}

}
