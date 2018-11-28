package com.herman.springproject.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.herman.springproject.pojo.User;
import com.herman.springproject.repository.UserRepository;
import com.herman.springproject.service.UserService;

/**
 * @ClassName: UserController
 * @Description: TODO()
 * @author 黄金宝
 * @date 2018年11月16日
 *
 */
@Controller
@RequestMapping("user")
public class LoginController {
	@Autowired
	private UserService userService;
	@Autowired
	private UserRepository userRepository;
	@RequestMapping("toLogin")
	public String toLogin() {
		return "signin";
	}

	@RequestMapping("login")
	public String login(String Username,String Password,String IsRmember,Model model) {
		List<User> userList=this.userService.getUserList();
		for (User user : userList) {
			if(user.getUsercode().equals(Username) && user.getPassword().equals(Password)) {
				System.out.println("login success");
				if(IsRmember !=null && IsRmember.equals("true")) {
					model.addAttribute("user", user);
					this.userRepository.save(user);
					Iterable<User> user1 =this.userRepository.findAll();
					User user2=this.userRepository.findById(1);
					System.out.println(user2);
					System.out.println(user1);
					return "index";
				}
				//model.addAttribute("msg", "login success");
				
				return "index";
			}else {
				model.addAttribute("msg", "login fail, please！");
			}
		}
		return "signin";
	}
}
