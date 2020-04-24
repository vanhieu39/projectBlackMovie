package com.kits.movie.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kits.movie.dao.SystemlogMapper;
import com.kits.movie.service.SyslogService;

@Controller
@RequestMapping("manager")
public class SystemLogController {

	@Autowired
	SystemlogMapper syslog;
	@Autowired
	SyslogService logservice;

	@RequestMapping("/clearlog")
	public String clearlog() {
		syslog.hideAllLog();
		return "redirect:/manager/systemlog";
	}
	@RequestMapping("/systemlog")
	public ModelAndView loglistPaginate(@RequestParam(name="page",defaultValue = "1") int page) {
		ModelAndView mav = new ModelAndView("admin/systemlog");
		int start = page * 50 - 50;		
		mav.addObject("listalllog", syslog.getAllLogPage(start));
		int nOfPages = (syslog.getAllLog().size()) / 50;
        if (nOfPages % 50 != 0) {
            nOfPages++;
        }      
        String link = "systemlog";
        mav.addObject("link", link);
        mav.addObject("noOfPages", nOfPages);
        mav.addObject("page", page);
		return mav;
	}
	
}
