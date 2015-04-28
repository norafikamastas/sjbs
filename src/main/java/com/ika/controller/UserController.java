package com.ika.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ika.entity.Keperluan;
import com.ika.entity.Pelajar;
import com.ika.entity.Pengguna;
import com.ika.service.PenggunaService;

@Controller
public class UserController {
	private final PenggunaService penggunaService;
	
	@Autowired
	public UserController(final PenggunaService penggunaService){
		this.penggunaService = penggunaService;
	}

	
	@RequestMapping(value = "/jualan", method = RequestMethod.GET)
	public String userJualan(Model model) {
		getUsername(model);
		return "jualan";
	}
	

	@ResponseBody 
	@RequestMapping(value = "/jualan/{nokp}", method = RequestMethod.GET)
	public List<String[]> carianMurid(@PathVariable("nokp") final String nokp) {
		Pelajar pelajar = penggunaService.findPelajarByNoKp(nokp);
		List<String[]> list = new ArrayList<String[]>();
		String[] line = {pelajar.getNama(),pelajar.getNoPengenalan(),pelajar.getPenjaga(),pelajar.getTahun().toString()};
		list.add(line);
		System.out.println(pelajar.getNama());
		return list;
	}
	
	@ResponseBody 
	@RequestMapping(value = "/jualan/carianKeperluan/{tahun}", method = RequestMethod.GET)
	public List<String[]> carianKeperluan(@PathVariable("tahun") final Long tahun) {
		List<Keperluan> keperluanList = penggunaService.findKeperluanByTahun(tahun);
		List<String[]> list = new ArrayList<String[]>();
		for (Keperluan keperluan : keperluanList) {
			String[] line = {keperluan.getKenyataan(),keperluan.getHargaSeunit().toString()};
			list.add(line);
		}
		return list;
	}

	@RequestMapping(value = "/laporan", method = RequestMethod.GET)
	public String userLaporan(Model model) {
		getUsername(model);
		return "laporan";
	}
	
	@RequestMapping(value = "/modul", method = RequestMethod.GET)
	public String userModul(Model model) {
		getUsername(model);
		return "modul";
	}
	
	@RequestMapping(value = "/senaraiPelajar", method = RequestMethod.GET)
	public String senaraiPelajar(Model model) {
		getUsername(model);
		return "senaraiPelajar";
	}
	
	@RequestMapping(value = "/senaraiKeperluan", method = RequestMethod.GET)
	public String senaraiKeperluan(Model model) {
		getUsername(model);
		return "senaraiKeperluan";
	}
	
	@RequestMapping(value = "/daftarpelajar", method = RequestMethod.GET)
	public String daftarpelajar(Model model) {
		getUsername(model);
		return "daftarpelajar";
	}
	
	@RequestMapping(value = "/KeperluanAdmin", method = RequestMethod.GET)
	public String KeperluanAdmin(Model model) {
		getUsername(model);
		return "KeperluanAdmin";
	}
	
	@RequestMapping(value = "/senaraiPelajarGBesar", method = RequestMethod.GET)
	public String senaraiPelajarGBesar(Model model) {
		getUsername(model);
		return "senaraiPelajarGBesar";
	}
	
	@RequestMapping(value = "/senaraiKeperluanGBesar", method = RequestMethod.GET)
	public String senaraiKeperluanGBesar(Model model) {
		getUsername(model);
		return "senaraiKeperluanGBesar";
	}
	
	@RequestMapping(value = "/rekodItem", method = RequestMethod.GET)
	public String rekodItem(Model model) {
		getUsername(model);
		return "rekodItem";
	}
	
	
	private void getUsername(Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			model.addAttribute("username", userDetail.getUsername());
			
			Pengguna pengguna = penggunaService.findByIdPengguna(userDetail.getUsername());
			model.addAttribute("nama", pengguna.getNama());
			model.addAttribute("noTelefon", pengguna.getTelefonBimbit());
		}
	}
}
