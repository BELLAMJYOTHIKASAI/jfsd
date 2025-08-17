package com.klef.jfsd.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.model.Manager;
import com.klef.jfsd.repository.ManagerRepository;

@Service
public class ManagerServiceImpl implements ManagerService{
	@Autowired
	private ManagerRepository managerRepository;
	
	@Override
	public Manager checkmanagerlogin(String email, String password) {
		return managerRepository.checkmanagerlogin(email, password);
	}

	@Override
	public String updatemanager(Manager m) {
		
		Manager man = managerRepository.findById(m.getId()).get();
		
		man.setContact(m.getContact());
		man.setDateOfBirth(m.getDateOfBirth());
		man.setClub(m.getClub());
		man.setGender(m.getGender());
		man.setLocation(m.getLocation());
		man.setName(m.getName());
		man.setPassword(m.getPassword());
		
		managerRepository.save(man);
		
		return "Manager Updated Successfully";
	}
}
