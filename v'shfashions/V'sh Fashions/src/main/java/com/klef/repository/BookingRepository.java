package com.klef.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.klef.entity.booking;

@Repository
public interface BookingRepository extends JpaRepository<booking,Long>{
     

  	@Query("select b from booking b where b.name=:name")
  	public List<booking> Readbooking(@Param("name") String name);
}
