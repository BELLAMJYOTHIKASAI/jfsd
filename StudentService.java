package com.klef.jfsd.service;

import com.klef.jfsd.model.Student;
import java.util.List;
import com.klef.jfsd.model.Event;
public interface StudentService {
	public Student checkstudentlogin(String email,String password);
	
	public String updatestudent(Student s);
	
	 public String registerForEvent(int studentId, int eventId);
	    public List<Event> getRegisteredEvents(int studentId);

		public Event findEventById(int eventId);
}
