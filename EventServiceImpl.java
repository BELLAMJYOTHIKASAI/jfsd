package com.klef.jfsd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.model.Event;
import com.klef.jfsd.model.Student;
import com.klef.jfsd.repository.EventRepository;
import com.klef.jfsd.repository.StudentRepository;

@Service
public class EventServiceImpl implements EventService{
	
	
	@Autowired
    private EventRepository eventRepository;
	
	@Autowired
    private StudentRepository studentRepository;

	@Override
	public List<Event> findByManagerId(int managerId) {
		return eventRepository.findByManagerId(managerId);
	}

	@Override
	public List<Event> getEventsByManager(long managerId) {
		return eventRepository.findByManagerId(managerId);
	}

	@Override
	public List<Student> getStudentsForEvent(int eventId) {
		return studentRepository.findByRegisteredEventsId(eventId);
	}

}
