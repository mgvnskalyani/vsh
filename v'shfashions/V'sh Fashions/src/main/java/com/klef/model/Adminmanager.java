package com.klef.model;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.klef.entity.Admin;
import com.klef.entity.booking;
import com.klef.repository.BookingRepository;
import com.klef.repository.AdminRepository;


@Service
public class Adminmanager {
	
	@Autowired
	BookingRepository br;
	
	@Autowired
	AdminRepository dr;
	
	 public List<String> ReadAdmins(){
		 List<String> list = new ArrayList<String>();
	 		for(Admin P:dr.Admins())
	 			list.add(toJsonString(P));
	 		return list;
	 }
	 public String toJsonString(Object obj)
	 	{
	 		GsonBuilder gbuilder = new GsonBuilder();
	 		Gson gson = gbuilder.create();
	 		return gson.toJson(obj);
	 	}
	public String saveDocdetails(Admin D) {
		dr.save(D);
 		return "Registered Successfully";
	}
	public String doclogin(String name, String password) {
    	return dr.doclogin(name, password);
    	
    	  
     }
	public List<String> readbookings(String name){
		List<String> list = new ArrayList<String>();
 		for(booking B:br.Readbooking(name))
 			list.add(toJsonString(B));
 		return list;
	}
	
}
