package com.herman.springproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.herman.springproject.pojo.User;
import com.herman.springproject.service.UserService;

/**
 * @ClassName: HomeController
 * @Description: TODO (这里用一句话描述这个类的作用)
 * @author 黄金宝
 * @date 2018年11月16日
 *
 */
@Controller
@RequestMapping("home")
public class HomeController {
	@Autowired
	private UserService userServicel;
	
	@RequestMapping("toHome")
	public String toHome(Model model) { 
		List<User> listUser=this.userServicel.getUserList();
		System.out.println(listUser);
		model.addAttribute("listUser", listUser);
		return "index";
	}
}
