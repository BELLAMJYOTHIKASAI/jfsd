package com.klef.jfsd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.model.Admin;
import com.klef.jfsd.model.Event;
import com.klef.jfsd.model.Manager;
import com.klef.jfsd.model.Student;
import com.klef.jfsd.repository.AdminRepository;
import com.klef.jfsd.repository.EventRepository;
import com.klef.jfsd.repository.ManagerRepository;
import com.klef.jfsd.repository.StudentRepository;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminRepository adminRepository;

    @Autowired
    private StudentRepository studentRepository;

    @Autowired
    private ManagerRepository managerRepository; 

    @Autowired
    private EventRepository eventRepository;

    @Override
    public String StudentRegistration(Student student) {
        studentRepository.save(student);
        return "Student Added Successfully";
    }

    @Override
    public List<Student> viewAllStudents() {
        return studentRepository.findAll();
    }

    @Override
    public Admin checkAdminLogin(String username, String password) {
        return adminRepository.checkAdminLogin(username, password);
    }

    @Override
    public String deletestudent(int sid) {
        studentRepository.deleteById(sid);
        return "Deleted Successfully";
    }

    @Override
    public String addEvent(Event event) {
        eventRepository.save(event);
        return "Event Added Successfully";
    }

    @Override
    public List<Event> viewAllEvents() {
        return eventRepository.findAll();
    }

    @Override
    public String ManagerRegistration(Manager manager) {
        managerRepository.save(manager);
        return "Manager Added Successfully";
    }

	@Override
	public List<Manager> viewAllManagers() {
		return managerRepository.findAll();
	}

	@Override
	public String deletemanager(int mid) {
		managerRepository.deleteById(mid);
        return "Deleted Successfully";
	}

	@Override
	public Manager findManagerById(int id)
	{
		return managerRepository.findById(id).orElseThrow(() -> new RuntimeException("Manager not found with ID: " + id));
	}
}
