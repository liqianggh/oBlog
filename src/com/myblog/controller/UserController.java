package com.myblog.controller;

import java.awt.image.BufferedImage;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.itcast.vcode.utils.VerifyCode;

import com.myblog.po.User;
import com.myblog.service.UserService;

@Controller
public class UserController {
	//注入userService
	@Autowired
	UserService userService ;
	
	
	//跳转到登陆页面
	@RequestMapping("toLogin.action")
	public String toLogin(HttpSession session)throws Exception{
		session.invalidate();
		return "login";
	}
	
	
	//获取验证码
	@RequestMapping("/verifyCode.action")
	public void verifyCode(HttpSession session,HttpServletResponse response) throws IOException{
			
		VerifyCode verifyCode = new VerifyCode();
		//获取图片
		BufferedImage image = verifyCode.getImage();
		//获取内容
		String text = verifyCode.getText();
		session.setAttribute("vCode", text);
		//将图片输出到页面
		verifyCode.output(image, response.getOutputStream());
	}
	
//	//登陆
	@RequestMapping(value="/login.action",method={RequestMethod.POST})
	public String findUserByUser(String verifyCode,User user,HttpServletRequest request) throws Exception{
		User user1 =  userService.findUser(user);
 
		String text = (String) request.getSession().getAttribute("vCode");
		
		if(!text.equalsIgnoreCase(verifyCode)){
			request.getSession().setAttribute("message", "验证码错误！");
			
			return "login";
		}
		
		
		if(user1!=null){
			request.getSession().setAttribute("user", user1);
			return "redirect:index.action";
		}
		request.getSession().setAttribute("message", "登陆失败！用户名或密码有误");
		
		return "login";
	}
	
 
	
	
	//退出
	@RequestMapping(value="/exit.action",method={RequestMethod.POST,RequestMethod.GET})
	public String exit(HttpServletRequest request)throws Exception{
		//清空session
		request.getSession().invalidate();
		
		return "redirect:index.action";
	}
}
