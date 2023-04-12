package com.klef.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.klef.entity.User;


@Repository
public interface UserRepository extends JpaRepository<User, Long> {
      @Query("select name from User p where p.name=:pname and p.password=:ppassword")
      public String login(@Param("pname") String name,@Param("ppassword") String password);
      @Query("SELECT P FROM User P WHERE P.password = :ppassword")
  	public List<User> readAllById(@Param("ppassword") String password);
      @Query("select P from User P where firstname=?1 and password=?2")
  	public User Plogin(String uname,String pwd);
  	
  	@Query("select p from User p where username=?1")
  	public User viewUser(String uname);
  	
}
