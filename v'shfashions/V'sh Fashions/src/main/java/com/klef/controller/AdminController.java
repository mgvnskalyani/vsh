package com.klef.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.klef.entity.Admin;

import com.klef.model.Adminmanager;

@RestController
@RequestMapping("/Admin")
public class AdminController {
@Autowired
Adminmanager dm;

public static String docname;

  @PostMapping("/dregistration")
  public String dregistration(@RequestBody Admin D)
   {
	String d =  dm.saveDocdetails(D);
	if(d!=null)
		return null;
	else
		return "error";
}
    @GetMapping("/AdminLogin/{ename}/{epassword}")
    public String dlogin(@PathVariable("ename") String name,@PathVariable("epassword") String password) {
	 String d=dm.doclogin(name, password);
	 if(d!=null) {
		 docname=d;
		 return "Successfully logged in";
		 
	 }
	 else {
		 return "Failed";
	 }
}
@GetMapping("/getdetails")
   public String getdetails() {
	return dm.readbookings("abc").toString();
}
}
