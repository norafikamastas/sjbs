package com.ika.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.ika.entity.Keperluan;
import com.ika.entity.Pelajar;
import com.ika.entity.Pengguna;
import com.ika.form.PenggunaForm;
import com.ika.repository.KeperluanRepo;
import com.ika.repository.PelajarRepo;
import com.ika.repository.PenggunaRepo;

@Service
@Component
public class PenggunaServiceImpl implements PenggunaService {
	
	private final PenggunaRepo penggunaRepo;
	private final SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
	static final PasswordEncoder passwordEncoder = new BCryptPasswordEncoder(); 
	private final PelajarRepo pelajarRepo;
	private final KeperluanRepo keperluanRepo;
	
	@Autowired
	public PenggunaServiceImpl(final PenggunaRepo penggunaRepo,
			final PelajarRepo pelajarRepo,
			final KeperluanRepo keperluanRepo){
		this.penggunaRepo = penggunaRepo;
		this.pelajarRepo = pelajarRepo;
		this.keperluanRepo = keperluanRepo;
	}

	@Override
	public Pengguna findByIdPengguna(String username, PenggunaForm form) {
		Pengguna pengguna = penggunaRepo.findByIdPengguna(username);
		form.setNama(pengguna.getNama());
		form.setNoPengenalan(pengguna.getNoPengenalan());
		form.setTarikhDaftar(dateFormat.format(pengguna.getTarikhDaftar()));
		form.setAlamat(pengguna.getAlamat());
		form.setIdKodBandar(pengguna.getIdKodBandar());
		form.setIdKodNegeri(pengguna.getIdKodNegeri());
		form.setPoskod(pengguna.getPoskod());
		form.setTelBimbit(pengguna.getTelefonBimbit());
		form.setTelefon(pengguna.getTelefon());
		form.setEmel(pengguna.getEmel());
		form.setIdPengguna(pengguna.getIdPengguna());
		form.setKodKategoriPengguna(pengguna.getIdKodKategoriPengguna0().getPerihal());
		
		return pengguna;
	}

	@Override
	public String savePengguna(PenggunaForm form) {
		// TODO Auto-generated method stub
		Pengguna pgn = penggunaRepo.findByIdPengguna(form.getIdPengguna());
		if(pgn != null){
			return "yes";
		}
		Pengguna pengguna = new Pengguna();
		pengguna.setNama(form.getNama());
		pengguna.setNoPengenalan(form.getNoPengenalan());
		pengguna.setTarikhDaftar(new Date());
		pengguna.setAlamat(form.getAlamat());
		pengguna.setIdKodBandar(form.getIdKodBandar());
		pengguna.setIdKodNegeri(form.getIdKodNegeri());
		pengguna.setTelefonBimbit(form.getTelBimbit());
		pengguna.setPoskod(form.getPoskod());
		pengguna.setTelefon(form.getTelefon());
		pengguna.setEmel(form.getEmel());
		pengguna.setIdPengguna(form.getIdPengguna());
		pengguna.setIdKodKategoriPengguna(form.getIdKodKategoriPengguna());
		String katalaluan = passwordEncoder.encode(form.getKatalaluan());
		pengguna.setKatalaluan(katalaluan);
		pengguna.setMasukOleh(form.getMasukOleh());
		pengguna.setTarikhMasuk(new Date());
		penggunaRepo.save(pengguna);
		return "no";
	}

	@Override
	public Pengguna findByIdPengguna(String username) {
		// TODO Auto-generated method stub
		return penggunaRepo.findByIdPengguna(username);
	}

	@Override
	public Pelajar findPelajarByNoKp(String nokp) {
		// TODO Auto-generated method stub
		return pelajarRepo.findByNoPengenalan(nokp);
	}

	@Override
	public List<Keperluan> findKeperluanByTahun(Long tahun) {
		// TODO Auto-generated method stub
		return (List<Keperluan>) keperluanRepo.findByTahun(tahun);
	}

	

}
