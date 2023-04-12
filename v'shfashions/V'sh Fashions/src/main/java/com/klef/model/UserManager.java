package com.klef.model;

import java.util.ArrayList; 
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import com.klef.entity.User;
import com.klef.entity.booking;
import com.klef.repository.BookingRepository;
import com.klef.repository.UserRepository;

@Service
public class UserManager {
     @Autowired
     UserRepository pr;
     
     @Autowired
     BookingRepository br;
     
     public String login(String name, String password) {
    	String p= pr.login(name, password);
    	return p;
    	  
     }
     public String saveParticipants(User P)
 	{
 		pr.save(P);
 		return "Registered Successfully";
 	}
     public List<String> readParticipants(String ppassword)
 	{
 		List<String> list = new ArrayList<String>();
 		for(User P:pr.readAllById(ppassword))
 			list.add(toJsonString(P));
 		return list;
 	}
     public String bookingslot(booking b) {
    	 try {
    		 br.save(b);
    		 return "Succesfull";
    	 }
    	 catch (Exception e) {
			return e.getMessage();
    	 }
     }
     
     public String toJsonString(Object obj)
 	{
 		GsonBuilder gbuilder = new GsonBuilder();
 		Gson gson = gbuilder.create();
 		return gson.toJson(obj);
 	}
}
