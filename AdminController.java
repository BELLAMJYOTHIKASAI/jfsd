package com.klef.jfsd.controller;

import java.io.IOException;
import java.sql.Blob;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.sql.rowset.serial.SerialBlob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.model.Admin;
import com.klef.jfsd.model.Event;
import com.klef.jfsd.model.Manager;
import com.klef.jfsd.model.Student;
import com.klef.jfsd.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController {
	   
	@Autowired
	private AdminService adminService;   
	
	@GetMapping("studentreg")
	public ModelAndView studentreg() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studentreg");
		return mv;
	}
	
	@GetMapping("adminlogin")
	public ModelAndView adminlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String auname =request.getParameter("auname");
		String apwd =request.getParameter("apwd");
		
		Admin admin = adminService.checkAdminLogin(auname, apwd);
		
		if(admin!=null) 
		{
			mv.setViewName("adminhome");
			
		}
		else
		{
			mv.setViewName("adminloginfail");
			mv.addObject("message","LoginFailed");
		}
		return mv;
		
	}
	
	@GetMapping("adminhome")
	public ModelAndView adminhome() 
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminhome");
		return mv;
	}
	
	@PostMapping("insertstudent")
    public ModelAndView insertstudent(HttpServletRequest request)
    {
       String name = request.getParameter("sname");
     String gender = request.getParameter("sgender");
     String dob = request.getParameter("sdob");
     String dept = request.getParameter("sdepartment");
     String email = request.getParameter("semail");
     String password = request.getParameter("spwd");
     String location = request.getParameter("saddress");
     String contact = request.getParameter("scontact");
     
       Student s = new Student();
       s.setName(name);
       s.setGender(gender);
       s.setDepartment(dept);
       s.setDateOfBirth(dob);
       s.setLocation(location);
       s.setEmail(email);
       s.setPassword(password);
       s.setContact(contact);
       
       String msg = adminService.StudentRegistration(s);
       
       ModelAndView mv = new ModelAndView("regsuccess");
       mv.addObject("message", msg);
     
       return mv;

    }
	
	@GetMapping("viewallstudents")
	  public ModelAndView viewallstudents() 
	  {
	    ModelAndView mv = new ModelAndView();
	    List<Student> stulist = adminService.viewAllStudents();
	    mv.setViewName("viewallstudents");
	    mv.addObject("stulist", stulist);
	    return mv;
	  }
	
	@GetMapping("deletestudent")
	  public ModelAndView deletestudent() 
	  {
	    ModelAndView mv = new ModelAndView();
	    List<Student> stulist = adminService.viewAllStudents();
	    mv.setViewName("deletestudent");
	    mv.addObject("stulist", stulist);
	    return mv;
	  }
	
	@GetMapping("deletestudent/{id}")
	public String deleteStudent(@PathVariable("id") int sid) {
	    adminService.deletestudent(sid);
	    return "redirect:/deletestudent";
	}
	
	@GetMapping("adminlogout")
	public ModelAndView adminlogout() 
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	  @GetMapping("addevent")
	    public ModelAndView addevent() {
	        ModelAndView mv = new ModelAndView();
	        List<Manager> managerList = adminService.viewAllManagers(); 
	        mv.addObject("managerList", managerList);
	        mv.setViewName("addevent");
	        return mv;
	    }

	    // POST request to insert the event
	    @PostMapping("insertevent")
	    public ModelAndView insertevent(
	            @RequestParam("ename") String name,
	            @RequestParam("edescription") String description,
	            @RequestParam("edate") String dateString,
	            @RequestParam("elocation") String location,
	            @RequestParam("managerId") int managerId,
	            @RequestParam("eimg") MultipartFile imageFile) {

	        Event event = new Event();
	        event.setEventName(name);

	        // Handle description, provide a default if empty
	        String description1 = (description == null || description.isEmpty()) ? "No description provided" : description;
	        event.setDescription(description1);

	        // Handle location, provide a default if empty
	        String location1 = (location == null || location.isEmpty()) ? "No location provided" : location;
	        event.setLocation(location1);

	        try {
	            Date date = new SimpleDateFormat("yyyy-MM-dd").parse(dateString);
	            event.setDate(date);
	        } catch (ParseException e) {
	            e.printStackTrace();
	        }

	        // Set the manager based on the selected managerId
	        Manager manager = adminService.findManagerById(managerId);
	        event.setManager(manager);

	        // Handle the image file
	        if (!imageFile.isEmpty()) {
	            try {
	                byte[] imageData = imageFile.getBytes();
	                Blob imageBlob = new SerialBlob(imageData);
	                event.setEventImg(imageBlob);
	            } catch (Exception e) {
	                e.printStackTrace();
	            }
	        }

	        // Save the event using the service
	        String msg = adminService.addEvent(event);
	        System.out.println("Event location: " + location); // Debug log to ensure location is passed

	        // Prepare the ModelAndView
	        ModelAndView mv = new ModelAndView("eventsuccess");
	        mv.addObject("message", msg);
	        return mv;
	    }


	@GetMapping("viewallevents")
	public ModelAndView viewallevents() {
	    ModelAndView mv = new ModelAndView();
	    List<Event> eventList = adminService.viewAllEvents();
	    mv.setViewName("viewallevents");
	    mv.addObject("eventList", eventList);
	    return mv;
	}
	
	@GetMapping("managerreg")
	public ModelAndView managerreg() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("managerreg");
		return mv;
	}
	
	@PostMapping("insertmanager")
    public ModelAndView insertmanager(HttpServletRequest request)
    {
       String name = request.getParameter("mname");
     String gender = request.getParameter("mgender");
     String dob = request.getParameter("mdob");
     String culb = request.getParameter("mclub");
     String email = request.getParameter("memail");
     String password = request.getParameter("mpwd");
     String location = request.getParameter("mlocation");
     String contact = request.getParameter("mcontact");
     
       Manager m = new Manager();
       m.setName(name);
       m.setGender(gender);
       m.setClub(culb);
       m.setDateOfBirth(dob);
       m.setLocation(location);
       m.setEmail(email);
       m.setPassword(password);
       m.setContact(contact);
       
       String msg = adminService.ManagerRegistration(m);
       
       ModelAndView mv = new ModelAndView("registersuccess");
       mv.addObject("message", msg);
     
       return mv;

    }
	
	@GetMapping("viewallmanagers")
	  public ModelAndView viewallmanagers() 
	  {
	    ModelAndView mv = new ModelAndView();
	    List<Manager> manlist = adminService.viewAllManagers();
	    mv.setViewName("viewallmanagers");
	    mv.addObject("manlist", manlist);
	    return mv;
	  }
	
	
	@GetMapping("deletemanager")
	  public ModelAndView deletemanager() 
	  {
	    ModelAndView mv = new ModelAndView();
	    List<Manager> manlist = adminService.viewAllManagers();
	    mv.setViewName("deletemanager");
	    mv.addObject("manlist", manlist);
	    return mv;
	  }
	
	@GetMapping("deletemanager/{id}")
	public String deleteManager(@PathVariable("id") int mid) {
	    adminService.deletemanager(mid);
	    return "redirect:/deletemanager";
	}

}
