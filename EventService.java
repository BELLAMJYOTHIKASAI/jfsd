package com.klef.jfsd.service;

import java.util.List;

import com.klef.jfsd.model.Event;
import com.klef.jfsd.model.Student;

public interface EventService {
	
	public List<Event> findByManagerId(int managerId);
	
	List<Event> getEventsByManager(long managerId);
	
	List<Student> getStudentsForEvent(int eventId);

	
}
