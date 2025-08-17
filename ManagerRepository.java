package com.klef.jfsd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.model.Manager;

@Repository
public interface ManagerRepository extends JpaRepository<Manager, Integer>{
	@Query("select m from Manager m where m.email=?1 and m.password=?2")
	public Manager checkmanagerlogin(String email,String password);
}
