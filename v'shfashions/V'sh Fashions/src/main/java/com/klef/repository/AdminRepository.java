package com.klef.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.klef.entity.Admin;
import com.klef.entity.User;


@Repository
public interface AdminRepository extends JpaRepository<Admin, Long> {
	
	@Query("select d from Admin d")
	public List<Admin> Admins();

	@Query("select name from Admin d where d.name=:dname and d.password=:dpassword")
    public String doclogin(@Param("dname") String name,@Param("dpassword") String password);
    
	
	 
}
