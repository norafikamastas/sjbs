package com.ika.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ika.form.PenggunaForm;
import com.ika.service.PenggunaService;

@Controller
public class AdminController {
	
	private final PenggunaService penggunaService;
	private final MainController mainController;
	
	@Autowired
	public AdminController(final MainController mainController,final PenggunaService penggunaService){
		this.mainController = mainController;
		this.penggunaService = penggunaService;
	}
	
	@RequestMapping(value = "/pengguna", method = RequestMethod.GET)
	public String pengguna(Model model) {
		String condition = "pengguna";
		mainController.getUsername(model,condition);
		return "pengguna";
	}
	
	@ResponseBody
	@RequestMapping(value = "/simpanPengguna", method = RequestMethod.POST)
	public String save(@ModelAttribute("penggunaForm") PenggunaForm form) {
		String semak = penggunaService.savePengguna(form);
		if(semak.equals("yes"))
			return "ID Pengguna telah wujud";
		else
			return "success";
	}
}
