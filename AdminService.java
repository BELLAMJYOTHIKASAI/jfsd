package com.klef.jfsd.service;

import java.util.List;
import com.klef.jfsd.model.Event;
import com.klef.jfsd.model.Manager;
import com.klef.jfsd.model.Admin;
import com.klef.jfsd.model.Student;

public interface AdminService {
	public String StudentRegistration(Student student);
	
	public List<Student> viewAllStudents();
	
	public Admin checkAdminLogin(String username,String password);
	
	public String deletestudent(int sid);
	
	public String addEvent(Event event);
	  public  List<Event> viewAllEvents();
	  
	  public String ManagerRegistration(Manager manager);
	  
	  public List<Manager> viewAllManagers();
	  
	  public String deletemanager(int mid);
	  
	  public Manager findManagerById(int id);

}
