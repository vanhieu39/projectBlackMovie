package com.kits.movie.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.kits.movie.entity.MyFile;

@Controller 
@RequestMapping("/upload")
public class MyFileController {
	
	private final String UPLOAD_DIRECTORY = "C:/Program Files/Apache Software Foundation/Tomcat 8.5/webapps/source/";
	
	// save File FormProduct
	@RequestMapping("/save-product")
    public void saveFile(HttpServletRequest servletRequest,
            @ModelAttribute MyFile uploadedFile,
            BindingResult bindingResult, Model model) {
 
        MultipartFile multipartFile = uploadedFile.getMultipartFile();
        String fileName = multipartFile.getOriginalFilename();
        try {
            File file = new File(servletRequest.getServletContext().getRealPath(UPLOAD_DIRECTORY), fileName);
            System.out.println(file+" sssssssssssss :" +fileName);
            multipartFile.transferTo(file);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
     
    @RequestMapping(value = "/product-input-form")
    public String inputProduct(Model model) {
        return "productForm";
    }

	@RequestMapping("/myFile")
	public String index(Model model) {
		model.addAttribute("myFile", new MyFile());
	    return "fileUpload";
	}	
	  
	@RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
	  public String uploadFile(MyFile myFile, Model model) {
	    model.addAttribute("message", "upload success");
	    model.addAttribute("description", myFile.getDescription());
	    
	    try {
	      MultipartFile multipartFile = myFile.getMultipartFile();
	      String fileName = multipartFile.getOriginalFilename();
	      File file = new File(UPLOAD_DIRECTORY, fileName);
	      multipartFile.transferTo(file);
	      System.out.println("get Name" + fileName);
	    } catch (Exception e) {
	      e.printStackTrace();
	      model.addAttribute("message", "upload failed");
	    }
	    return "result";
	  }
}
