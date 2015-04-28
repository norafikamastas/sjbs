package com.ika.service;

import java.util.List;

import com.ika.entity.Keperluan;
import com.ika.entity.Pelajar;
import com.ika.entity.Pengguna;
import com.ika.form.PenggunaForm;

public interface PenggunaService {

	Pengguna findByIdPengguna(String username, PenggunaForm form);

	String savePengguna(PenggunaForm form);

	Pengguna findByIdPengguna(String username);

	Pelajar findPelajarByNoKp(String nokp);

	List<Keperluan> findKeperluanByTahun(Long tahun);


}
