package com.klef.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.klef.entity.User;
import com.klef.entity.booking;
import com.klef.model.UserManager;
import com.klef.model.Adminmanager;
@RestController
@RequestMapping("/api")
public class UserController {
     @Autowired 
     UserManager pm;
     
     @Autowired
     Adminmanager dm;
     
     @PostMapping("/registration")
 	public String pregistration(@RequestBody User P)
 	{
 		String p =  pm.saveParticipants(P);
 		if(p!=null)
 			return null;
 		else
 			return "error";
 	}
     @GetMapping("/UserLogin/{ename}/{epassword}")
     public String login(@PathVariable("ename") String name,@PathVariable("epassword") String password) {
    	 String p=pm.login(name, password);
    	 if(p!=null) {
    		 return "Successfully logged in";
    	 }
    	 else {
    		 return "Failed";
    	 }
     }
     @PostMapping("/bookingslot")
     public String Booking(@RequestBody booking b) {
    	 return pm.bookingslot(b);
     }
     
     @GetMapping("/Admins")
     public String Admins() {
    	 return dm.ReadAdmins().toString();
     }
     
}
