package com.klef.jfsd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.model.Event;
import com.klef.jfsd.model.Student;
import com.klef.jfsd.repository.EventRepository;
import com.klef.jfsd.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {

    @Autowired
    private StudentService studentService;

    @Autowired
    private EventRepository eventRepository;
   
	
	@GetMapping("/")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	
	@GetMapping("studentlogin")
	public ModelAndView studentlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studentlogin");
		return mv;
	}
	
	@PostMapping("checkstudentlogin")
	public ModelAndView checkstudentlogin(HttpServletRequest request) {
	    ModelAndView mv = new ModelAndView();
	    
	    String semail = request.getParameter("semail");
	    String spwd = request.getParameter("spwd");
	    
	    // Verify login credentials
	    Student student = studentService.checkstudentlogin(semail, spwd);
	    
	    if(student != null) {
	        // Set the student object in the session upon successful login
	        HttpSession session = request.getSession();
	        session.setAttribute("student", student);
	        
	        mv.setViewName("studenthome");
	    } else {
	        mv.setViewName("studentloginfail");
	        mv.addObject("message", "Login Failed");
	    }
	    
	    return mv;
	}

	
	@GetMapping("studenthome")
	public ModelAndView studenthome() 
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studenthome");
		return mv;
	}
	
	@GetMapping("studentlogout")
	public ModelAndView studentlogout(HttpServletRequest request) 
	{
		HttpSession session = request.getSession();
		
		session.removeAttribute("student");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studentlogin");
		return mv;
	}
	
	@GetMapping("about")
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("about");
		return mv;
	}
	
	@GetMapping("studentsessionfail")
	public ModelAndView studentsessionfail() 
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studentsessionfail");
		return mv;
	}
	
	@GetMapping("studentprofile")
	public ModelAndView studentprofile() 
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studentprofile");
		return mv;
	}
	
	@GetMapping("updatestudent")
	public ModelAndView updatestudent() 
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("updatestudent");
		return mv;
	}
	
	
	
	@PostMapping("updatestu")
	public ModelAndView update(HttpServletRequest request, HttpSession session) {
	    int id = Integer.parseInt(request.getParameter("sid"));
	    String name = request.getParameter("sname");
	    String gender = request.getParameter("sgender");
	    String dob = request.getParameter("sdob");
	    String dept = request.getParameter("sdept");
	    String location = request.getParameter("slocation");
	    String password = request.getParameter("spwd");
	    String contact = request.getParameter("scontact");

	    Student s = new Student();
	    s.setId(id);
	    s.setName(name);
	    s.setGender(gender);
	    s.setDateOfBirth(dob);
	    s.setDepartment(dept);
	    s.setLocation(location);
	    s.setPassword(password);
	    s.setContact(contact);

	    // Update the student in the database
	    String msg = studentService.updatestudent(s);

	    // Update the session attribute with the new student details
	    session.setAttribute("student", s);

	    // Redirect to success page
	    ModelAndView mv = new ModelAndView("updatesuccess");
	    mv.addObject("message", msg);

	    return mv;
	}


    
    @GetMapping("/viewevents")
    public String viewEvents(Model model) {
        model.addAttribute("eventList", eventRepository.findAll());
        return "viewevents";
    }
    @GetMapping("displayEventImage")
    public ResponseEntity<byte[]> displayEventImage(@RequestParam("id") int eventId) throws Exception {
        // Retrieve the event from the service
        Event event = studentService.findEventById(eventId); 
        
        // Get the event image as a Blob
        byte[] imageBytes = null;
        if (event.getEventImg() != null) {
            imageBytes = event.getEventImg().getBytes(1, (int) event.getEventImg().length());
        }

        // Return the image in the response
        return ResponseEntity.ok().contentType(org.springframework.http.MediaType.IMAGE_JPEG).body(imageBytes);
    }

    @PostMapping("/registerEvent")
    public String registerForEvent(@RequestParam("eventId") int eventId, 
                                    @RequestParam("studentId") String studentIdStr, 
                                    HttpServletRequest request, Model model) {
        HttpSession session = request.getSession();
        Student student = (Student) session.getAttribute("student");

        if (student == null) {
            model.addAttribute("message", "Please log in to register for events.");
            return "studentlogin"; // Redirect to login if student is not logged in
        }

        // Convert studentIdStr to int and handle invalid input
        int studentId = 0;
        try {
            studentId = Integer.parseInt(studentIdStr);
        } catch (NumberFormatException e) {
            model.addAttribute("message", "Invalid student ID.");
            return "viewevents"; // Redirect back to events page with error
        }

        // Ensure the student is the one registering
        if (student.getId() == studentId) {
            String result = studentService.registerForEvent(student.getId(), eventId);
            model.addAttribute("message", result); // Display success or failure message
        } else {
            model.addAttribute("message", "You cannot register for this event.");
        }

        return "redirect:/viewevents";
    }


    @GetMapping("/viewregisteredevents")
    public String viewRegisteredEvents(HttpServletRequest request, Model model) {
        HttpSession session = request.getSession();
        Student student = (Student) session.getAttribute("student");

        if (student == null) {
            model.addAttribute("message", "Please log in to view registered events.");
            return "studentlogin"; // Redirect to login page if the student is not logged in
        }

        model.addAttribute("registeredEvents", studentService.getRegisteredEvents(student.getId()));
        return "viewregisteredevents"; // Show the registered events page
    }

}
