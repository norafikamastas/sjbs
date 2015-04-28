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

import com.ika.entity.KodBandar;
import com.ika.entity.KodKategoriPengguna;
import com.ika.entity.KodNegeri;
import com.ika.entity.Pengguna;
import com.ika.form.PenggunaForm;
import com.ika.service.KodBandarService;
import com.ika.service.KodKategoriPenggunaService;
import com.ika.service.KodNegeriService;
import com.ika.service.PenggunaService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {
	
	private final PenggunaService penggunaService;
	private final KodBandarService kodBandarService;
	private final KodNegeriService kodNegeriService;
	private final KodKategoriPenggunaService kodKategoriPenggunaService;
	
	@Autowired
	public MainController(final PenggunaService penggunaService,
			final KodBandarService kodBandarService,
			final KodNegeriService kodNegeriService,
			final KodKategoriPenggunaService kodKategoriPenggunaService){
		this.penggunaService = penggunaService;
		this.kodBandarService = kodBandarService;
		this.kodNegeriService = kodNegeriService;
		this.kodKategoriPenggunaService = kodKategoriPenggunaService;
	}
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String home(Model model) {
		String condition = "profil";
		getUsername(model,condition);
		return "profil";
	}
	
	
	@RequestMapping(value = "/profil", method = RequestMethod.GET)
	public String profil(Model model) {
		String condition = "profil";
		getUsername(model,condition);
		return "profil";
	}
	
	public void getUsername(Model model, String condition) {
		PenggunaForm form = new PenggunaForm();
		List<KodBandar> listBandar = new ArrayList<>();
		List<KodNegeri> listNegeri = new ArrayList<>();
		if(condition.equals("pengguna")){
			listNegeri = kodNegeriService.findAll();
			model.addAttribute("listNegeri", listNegeri);

			model.addAttribute("penggunaForm", form);
		}else{
			List<KodKategoriPengguna> listKategoriPengguna = new ArrayList<>();
			String role = "";
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			if (!(auth instanceof AnonymousAuthenticationToken)) {
				Pengguna pengguna = new Pengguna();
				UserDetails userDetail = (UserDetails) auth.getPrincipal();
				System.out.println(userDetail);
				model.addAttribute("username", userDetail.getUsername());
				form.setMasukOleh(userDetail.getUsername());
				pengguna = penggunaService.findByIdPengguna(userDetail.getUsername(),form);
				role  = pengguna.getIdKodKategoriPengguna0().getPerihal();
				if(condition.equals("profil")){
					listNegeri = kodNegeriService.findAll();
					listBandar = kodBandarService.findByIdKodNegeri(pengguna.getIdKodNegeri());
					model.addAttribute("listNegeri", listNegeri);
					model.addAttribute("listBandar", listBandar);	
				}else{
					listNegeri = kodNegeriService.findAll();
					model.addAttribute("listNegeri", listNegeri);
					listKategoriPengguna = kodKategoriPenggunaService.findAll();
					model.addAttribute("listKategoriPengguna", listKategoriPengguna);
				}
			}
			
			model.addAttribute("penggunaForm", form);
			model.addAttribute("kodKategoriPengguna", role);
		}
	}
	
	@ResponseBody 
	@RequestMapping(value = "/listBandar/{idNegeri}", method = RequestMethod.GET)
	public List<String[]> carianBandar(@PathVariable("idNegeri") final Long idNegeri) {
		List<KodBandar> listBandar  = kodBandarService.findByIdKodNegeri(idNegeri);
		List<String[]> list = new ArrayList<String[]>();
		for (KodBandar kodBandar : listBandar) {
			String [] form = {kodBandar.getId().toString(),kodBandar.getPerihal()};
			list.add(form);
		}
		return list;
	}
}
