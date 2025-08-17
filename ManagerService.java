package com.klef.jfsd.service;

import com.klef.jfsd.model.Manager;


public interface ManagerService {
	
	public Manager checkmanagerlogin(String email,String password);
	
	public String updatemanager(Manager m);
	
}
