package com.kits.movie.controller.admin;

import java.io.Console;
import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.http.SecurityHeaders;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kits.movie.dao.ActorMapper;
import com.kits.movie.dao.DirectorsMapper;
import com.kits.movie.dao.MovieMapper;
import com.kits.movie.dao.SystemlogMapper;
import com.kits.movie.dao.UserMapper;
import com.kits.movie.entity.Actor;
import com.kits.movie.entity.Directors;
import com.kits.movie.entity.User;
import com.kits.movie.service.MyUserDetailsService;
import com.kits.movie.service.SyslogService;

@Controller
@RequestMapping("manager")
public class AdminHaiController {
	@Autowired
	MyUserDetailsService myUserDetailsService;
	@Autowired
	ActorMapper actormapper;
	@Autowired
	SystemlogMapper syslog;
	@Autowired
	SyslogService logservice;
	@Autowired
	DirectorsMapper directormapper;
	@Autowired
	MovieMapper movieMapper;
	@Autowired
	UserMapper usermapper;
	
	
	private final String UPLOAD_DIRECTORY = "C:/Program Files/Apache Software Foundation/Tomcat 8.5/webapps/source/";
	private final String SOURCE_LINK = "https://bmovie.vn/source/";
	
	@RequestMapping("/")	
	public ModelAndView homemanager(@RequestParam(name="error",defaultValue = "0") int erro) {
		ModelAndView mav = new ModelAndView("admin/login");
		if(erro != 0) {
			mav.addObject("erromes", "Login Error! Please Try Again!");
		}
		return mav;
	}
	@RequestMapping("/home")	
	public ModelAndView home2(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/home");
		int countMovie = movieMapper.countMovie();
		mav.addObject("countmovie", countMovie);
		int countLog = syslog.countLog();
		mav.addObject("countlog", countLog);
		int countActor = actormapper.countActor();
		mav.addObject("countactor", countActor);
		int countWomenActor = actormapper.countWomenActor();
		mav.addObject("countwomenactor", countWomenActor);
		int countDirectors = directormapper.countDirectors();
		mav.addObject("countdirectors", countDirectors);
		int countwomendirectors = directormapper.countWomenDirectors();
		mav.addObject("countwomendirectors", countwomendirectors);
		mav.addObject("listtop3user", usermapper.getTop3Activity());
		mav.addObject("listtop3usertotal", syslog.getTop3ActivityTotal());
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		UserDetails userDetail = (UserDetails) auth.getPrincipal();
		 
		User u = myUserDetailsService.loadUserByUsername(userDetail.getUsername());
		
		//mav.addObject("userId", request.getSession().setAttribute("userId", u.getId_user()));
		int userId = u.getId_user();
		
		
		
		mav.addObject("userId", userId);
		
	
		return mav;
	}
	@RequestMapping("/actor")
	public ModelAndView actorlistPaginate(@RequestParam(name="page",defaultValue = "1") int page, @RequestParam(name="action",defaultValue = "0") int action) {
		ModelAndView mav = new ModelAndView("admin/actor");
		int start = page * 20 - 20;		
		mav.addObject("listactor", actormapper.getAllActorPage(start));
		int nOfPages = (actormapper.getAllActor().size()) / 20;
        if (nOfPages % 20 != 0) {
            nOfPages++;
        }      
        String link = "actor";
        mav.addObject("link", link);
        mav.addObject("noOfPages", nOfPages);
        mav.addObject("page", page);
//thông báo hành động CUID
        if(action == 0) {
        	mav.addObject("mes", "");
        }else if(action == 1) {
			mav.addObject("mes", "Insert Actor Success!");
		}else if(action == 2) {
			mav.addObject("mes", "Update Actor Success!");
		}else if(action == 3) {
			mav.addObject("mes", "Delete Actor Success!");
		}
//END thông báo hành động CUID
		return mav;
	}
//	không phân trang ACTOR
//	@RequestMapping("/actor")
//	public ModelAndView actorlist() {
//		ModelAndView mav = new ModelAndView("admin/actor");
//		mav.addObject("listactor", actormapper.getAllActor());
//		return mav;
//	}
//	@RequestMapping("/actor/updated")
//	public ModelAndView actorlist2(@RequestParam(name="action",defaultValue = "0") int action) {
//		ModelAndView mav = new ModelAndView("admin/actor");
//		mav.addObject("listactor", actormapper.getAllActor());
//		if(action == 1) {
//			mav.addObject("mes", "Insert Actor Success!");
//		}else if(action == 2) {
//			mav.addObject("mes", "Update Actor Success!");
//		}else if(action == 3) {
//			mav.addObject("mes", "Delete Actor Success!");
//		}else {
//			mav.addObject("mes", "");
//		}
//		return mav;
//	}
	@RequestMapping("/showFormAddActor")
	public ModelAndView showForm( Model model) {
		ModelAndView mav = new ModelAndView("admin/addNewActor");
		mav.addObject("actor", new Actor());
		return mav;
	}
	@RequestMapping(value = "/saveActor", method = RequestMethod.POST)
	public String saveActor(@ModelAttribute("actor") Actor actor) {
		String fileName="";
		try {
		MultipartFile multipartFile = actor.getMultipartFile();
	      fileName = multipartFile.getOriginalFilename();
	      if(!fileName.equals("")) {
				fileName = System.currentTimeMillis()+fileName;
			}
	      File file = new File(UPLOAD_DIRECTORY, fileName);
			multipartFile.transferTo(file);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		if(!fileName.equals("")) {
			actor.setImages(SOURCE_LINK+fileName);
		}
		if(actor.getId_actor()==null) {
			actormapper.saveActor(actor);
			syslog.saveLog(logservice.logInsertActor(actor));
			return "redirect:/manager/actor?action=1";
		}else{
			actormapper.updateActor(actor);
			syslog.saveLog(logservice.logUpdateActor(actor));
			return "redirect:/manager/actor?action=2";
		}
	}
	@RequestMapping("/updateActor")
	public ModelAndView updateActor(@RequestParam("actorID") int actorID) {
		ModelAndView mav = new ModelAndView("admin/addNewActor");
		Actor actor = actormapper.findActorById(actorID);
		mav.addObject("actor",actor);
		return mav;
	}
	@RequestMapping("/deleteActor")
	public String deleteActor(@RequestParam("actorID") int actorID) {
		actormapper.deleteActor(actorID);
		syslog.saveLog(logservice.logDeleteActor(actorID));
		return "redirect:/manager/actor?action=3";
	}
	
	@RequestMapping("/directors")
	public ModelAndView directorlistPaginate(@RequestParam(name="page",defaultValue = "1") int page, @RequestParam(name="action",defaultValue = "0") int action) {
		ModelAndView mav = new ModelAndView("admin/directors");
		int start = page * 20 - 20;		
		mav.addObject("listdirector", directormapper.getAllDirectorsPage(start));
		int nOfPages = (directormapper.getAllDirectors().size()) / 20;
        if (nOfPages % 20 != 0) {
            nOfPages++;
        }      
        String link = "directors";
        mav.addObject("link", link);
        mav.addObject("noOfPages", nOfPages);      
        mav.addObject("page", page);
//thông báo hành động CUID
        if(action == 0) {
        	mav.addObject("mes", "");
        }else if(action == 1) {
			mav.addObject("mes", "Insert Director Success!");
		}else if(action == 2) {
			mav.addObject("mes", "Update Director Success!");
		}else if(action == 3) {
			mav.addObject("mes", "Delete Director Success!");
		}
//END thông báo hành động CUID
		return mav;
	}
//	Không phân trang
//	@RequestMapping("/directors")
//	public ModelAndView directorlist() {
//		ModelAndView mav = new ModelAndView("admin/directors");
//		mav.addObject("listdirector", directormapper.getAllDirectors());
//		return mav;
//	}
//	@RequestMapping("/directors/updated")
//	public ModelAndView directorlist2(@RequestParam("action") int action) {
//		ModelAndView mav = new ModelAndView("admin/directors");
//		mav.addObject("listdirector", directormapper.getAllDirectors());
//		if(action == 1) {
//			mav.addObject("mes", "Insert Director Success!");
//		}else if(action == 2) {
//			mav.addObject("mes", "Update Director Success!");
//		}else if(action == 3) {
//			mav.addObject("mes", "Delete Director Success!");
//		}
//		return mav;
//	}
	@RequestMapping("/showFormAddDirector")
	public ModelAndView showFormAddDirector() {
		ModelAndView mav = new ModelAndView("admin/addNewDirector");
		mav.addObject("director", new Directors());
		return mav;
	}
	@RequestMapping(value = "/saveDirector", method = RequestMethod.POST)
	public String saveDirector(@ModelAttribute("director") Directors director) {
		String fileName="";
		try {
			MultipartFile multipartFile = director.getMultipartFile();
		      fileName = multipartFile.getOriginalFilename();
		      if(!fileName.equals("")) {
					fileName = System.currentTimeMillis()+fileName;
				}
		      File file = new File(UPLOAD_DIRECTORY, fileName);
				multipartFile.transferTo(file);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		if(!fileName.equals("")) {
			director.setImages(SOURCE_LINK+fileName);
		}
		if(director.getId()==null) {
			directormapper.saveDirector(director);
			syslog.saveLog(logservice.logInsertDirector(director));
			return "redirect:/manager/directors?action=1";
		}else{
			directormapper.updateDirector(director);
			syslog.saveLog(logservice.logUpdateDirector(director));
			return "redirect:/manager/directors?action=2";
		}
	}
	@RequestMapping("/updateDirector")
	public ModelAndView updateDirector(@RequestParam("id") int id) {
		ModelAndView mav = new ModelAndView("admin/addNewDirector");
		Directors director = directormapper.findDirectorById(id);
		mav.addObject("director",director);
		return mav;
	}
	@RequestMapping("/deleteDirector")
	public String deleteDirector(@RequestParam("id") int id) {
		directormapper.deleteDirector(id);
		syslog.saveLog(logservice.logDeleteDirector(id));
		return "redirect:/manager/directors?action=3";
	}
}
