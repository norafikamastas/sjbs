package com.ika.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@SuppressWarnings("serial")
@MappedSuperclass
public class BaseEntity implements Serializable  {

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="TARIKH_MASUK")
	private Date tarikhMasuk;

	@Column(name="MASUK_OLEH", length=30)
	private String masukOleh;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="TARIKH_KEMASKINI")
	private Date tarikhKemaskini;

	@Column(name="KEMASKINI_OLEH", length=30)
	private String kemaskiniOleh;

	public void setTarikhMasuk(Date tarikhMasuk) {
		this.tarikhMasuk = tarikhMasuk;
	}

	public Date getTarikhMasuk() {
		return this.tarikhMasuk;
	}

	public void setMasukOleh(String masukOleh) {
		this.masukOleh = masukOleh;
	}

	public String getMasukOleh() {
		return this.masukOleh;
	}

	public void setTarikhKemaskini(Date tarikhKemaskini) {
		this.tarikhKemaskini = tarikhKemaskini;
	}

	public Date getTarikhKemaskini() {
		return this.tarikhKemaskini;
	}

	public void setKemaskiniOleh(String kemaskiniOleh) {
		this.kemaskiniOleh = kemaskiniOleh;
	}

	public String getKemaskiniOleh() {
		return this.kemaskiniOleh;
	}
}
