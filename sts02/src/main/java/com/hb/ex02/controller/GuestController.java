package com.hb.ex02.controller;


import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hb.ex02.model.GuestDao;
import com.hb.ex02.model.GuestVo;

@Controller
public class GuestController {
	Logger log = Logger.getLogger(this.getClass());

	@Autowired
	private GuestDao guestDao;

	@RequestMapping("/")
	public String selectAll(Model model) {
		try{
		model.addAttribute("alist", guestDao.listAll());
		}catch(Exception e){}
		return "list";
	}
	
	@RequestMapping("/add")
	public String addView() {
		return "addform";
	}
	
	@RequestMapping("/insert")
	public String insertOne(GuestVo bean, Model model) {
		log.debug(bean);
		guestDao.insertOne(bean);
		return "redirect:/";
	}
	
	@RequestMapping("/detail")
	public String detailOne(@RequestParam("idx") int sabun,Model model) {
		log.debug(sabun);
		System.out.println(sabun);
		try{
		System.out.println("daoStart");
		GuestVo bean=guestDao.selectOne(sabun);
		System.out.println(bean);
		model.addAttribute("bean", bean);
		}catch(Exception e){}
		return "detail";
	}
	
	@RequestMapping("/edit")
	public String editView(Model model, @RequestParam("idx") int sabun){
		model.addAttribute("bean", guestDao.selectOne(sabun));
		return "editform";
	}
	
	@RequestMapping("/update")
	public String updateOne(GuestVo bean){
		guestDao.updateOne(bean);
		return "redirect:/";
	}
}










