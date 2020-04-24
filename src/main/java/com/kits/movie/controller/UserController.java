package com.kits.movie.controller;

import java.io.File;
import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kits.movie.dao.SystemlogMapper;
import com.kits.movie.dao.UserMapper;
import com.kits.movie.entity.User;
import com.kits.movie.service.SyslogService;

@Controller
@RequestMapping("manager")
public class UserController {
	
	private final Logger logger = LoggerFactory.getLogger(UserController.class);
	@Autowired
	UserMapper mapper;
	@Autowired
	SystemlogMapper syslog;
	@Autowired
	SyslogService logservice;
	
	private final String UPLOAD_DIRECTORY = "C:/Program Files/Apache Software Foundation/Tomcat 8.5/webapps/source/";
	private final String SOURCE_LINK = "https://bmovie.vn/source/";
	private final String USER_LINK = "user/";
	
	@RequestMapping("/user2")
	public ModelAndView userlistPaginate2(@RequestParam(name="page",defaultValue = "1") int page, @RequestParam(name="action",defaultValue = "0") int action) {
		ModelAndView mav = new ModelAndView("admin/user2");
		int start = page * 20 - 20;		
		mav.addObject("listuser", mapper.getAllUserPage(start));
		int nOfPages = (mapper.getAllUser().size()) / 20;
        if (nOfPages % 20 != 0) {
            nOfPages++;
        }      
        String link = "user";
        mav.addObject("link", link);
        mav.addObject("noOfPages", nOfPages);      
        mav.addObject("page", page);
//thông báo hành động CUID
        if(action == 0) {
        	mav.addObject("mes", "");
        }else if(action == 1) {
        	mav.addObject("mes", "Insert User Success!");
		}else if(action == 2) {
			mav.addObject("mes", "Update User Success!");
		}else if(action == 3) {
			mav.addObject("mes", "Delete User Success!");
		}
//END thông báo hành động CUID
		return mav;
	}
	@RequestMapping("/user")
	public ModelAndView userlistPaginate(@RequestParam(name="page",defaultValue = "1") int page, @RequestParam(name="action",defaultValue = "0") int action) {
		ModelAndView mav = new ModelAndView("admin/user");
		int start = page * 20 - 20;		
		mav.addObject("listuser", mapper.getAllUserPage(start));
		int nOfPages = (mapper.getAllUser().size()) / 20;
        if (nOfPages % 20 != 0) {
            nOfPages++;
        }      
        String link = "user";
        mav.addObject("link", link);
        mav.addObject("noOfPages", nOfPages);      
        mav.addObject("page", page);

        if(action == 0) {
        	mav.addObject("mes", "");
        }else if(action == 1) {
        	mav.addObject("mes", "Insert User Success!");
		}else if(action == 2) {
			mav.addObject("mes", "Update User Success!");
		}else if(action == 3) {
			mav.addObject("mes", "Delete User Success!");
		}

		return mav;
	}

	@RequestMapping("/showFormAddUser")
	public ModelAndView showForm() {
		ModelAndView mav = new ModelAndView("admin/add-user");
		mav.addObject("user", new User());
		return mav;
	}
	@RequestMapping(value="/saveProcess", method = RequestMethod.POST)//, produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String saveProgress(@ModelAttribute("user") User user) {
		logger.info("/manager/saveProcess");
		String fileName="";
		try {
			MultipartFile multipartFile = user.getMultipartFile();
			fileName = multipartFile.getOriginalFilename();
			if(!fileName.equals("")) {
				fileName = System.currentTimeMillis()+fileName;
			}
			File file = new File(UPLOAD_DIRECTORY + USER_LINK, fileName);
			multipartFile.transferTo(file);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		if(!fileName.equals("")) {
			user.setImages(SOURCE_LINK + USER_LINK + fileName);
		}
		if(user.getId_user() == null) {
			mapper.saveUser(user);
			syslog.saveLog(logservice.logInsertUser(user));
			return "redirect:/manager/user?action=1";
		}else{
			mapper.updateUser(user);
			syslog.saveLog(logservice.logUpdateUser(user));
			return "redirect:/manager/user?action=2";
		}
	}
	@RequestMapping("/deleteUser")
	public String deleteUser(@RequestParam("userId") int userId) {
		mapper.deleteUser(userId);
		syslog.saveLog(logservice.logDeleteUser(userId));
		return "redirect:/manager/user?action=3";
	}
	@RequestMapping("/danhsachphim")
	public String danhsachphim() {
		return "danhsachphim";
	}
	
	@RequestMapping("/editUser")
	public ModelAndView editUser(@RequestParam("userId") int userId) {
		ModelAndView mav = new ModelAndView("admin/add-user");
		User user = mapper.findById(userId);
		mav.addObject("user",user);
		return mav;
	}
}


