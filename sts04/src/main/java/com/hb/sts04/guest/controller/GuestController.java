package com.hb.sts04.guest.controller;

import javax.servlet.http.HttpServletRequest;

import org.omg.PortableServer.REQUEST_PROCESSING_POLICY_ID;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hb.sts04.guest.model.GuestDao;
import com.hb.sts04.guest.model.GuestVo;

@Controller
public class GuestController {
	@Autowired
	private GuestDao guestDao;
	
	@RequestMapping(value="/guest",method=RequestMethod.GET)
	public String guestList(Model model) {
		model.addAttribute("alist", guestDao.selectAll());
		return "guest/list";
	}
	@RequestMapping(value="/guest/{sabun}", method=RequestMethod.GET)
	public String guestOne(Model model,@PathVariable("sabun") int sabun) {
		model.addAttribute("bean", guestDao.selectOne(sabun));
		return "guest/detail";
	}
	
	@RequestMapping(value="/guest/{sabun}", method=RequestMethod.PUT)
	public String guestUpdate(@PathVariable("sabun") int sabun,GuestVo bean){
		guestDao.updateOne(bean);
		return "redirect:/guest/"+sabun;
	}
	@RequestMapping(value="/guest/{sabun}",method=RequestMethod.DELETE)
	public String guestDelete(@PathVariable("sabun") int sabun){
//		System.out.println("delete:"+sabun);
		guestDao.deleteOne(sabun);
		return "redirect:/guest";
	}
	@RequestMapping("/guest/form")
	public void form() {
//		/guest/form;
	}
	@RequestMapping(value="/guest",method=RequestMethod.POST)
	public String GuestInsert(GuestVo bean) {
		System.out.println("add:"+bean);
		guestDao.insertOne(bean);
		return "redirect:/guest";
	}
	
}










