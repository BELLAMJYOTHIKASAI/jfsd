package com.klef.jfsd.model;
import java.util.List;

import jakarta.persistence.*;
@Entity
@Table(name="manager_table")
public class Manager {

	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    @Column(name="manager_id")
	    @Id
	    private int id;

	    @Column(name="manager_name", nullable=false, length=50)
	    private String name;

	    @Column(name="manager_gender", nullable=false, length=20)
	    private String gender;

	    @Column(name="manager_dob", nullable=false, length=10)
	    private String dateOfBirth; 
	    
	    @Column(name="manager_club", nullable=false, length=50)
	    private String club;

	    @Column(name="manager_email", nullable=false, unique=true, length=50)
	    private String email;

	    @Column(name="manager_password", nullable=false, length=50)
	    private String password;

	    @Column(name="manager_location", nullable=false, length=50)
	    private String location;

	    @Column(name="manager_contact", nullable=false, unique=true, length=20)
	    private String contact;

	    @OneToMany(mappedBy = "manager", cascade = CascadeType.ALL, orphanRemoval = true)
	    private List<Event> events;

	    // Getters and Setters
	    public List<Event> getEvents() {
	        return events;
	    }

	    public void setEvents(List<Event> events) {
	        this.events = events;
	    }

	    
	    public int getId() {
	        return id;
	    }
	    public void setId(int id) {
	        this.id = id;
	    }
	    public String getName() {
	        return name;
	    }
	    public void setName(String name) {
	        this.name = name;
	    }
	    public String getGender() {
	        return gender;
	    }
	    public void setGender(String gender) {
	        this.gender = gender;
	    }
	    public String getDateOfBirth() {
	        return dateOfBirth;
	    }
	    public void setDateOfBirth(String dateOfBirth) {  // Now accepts String
	        this.dateOfBirth = dateOfBirth;
	    }
	    
	    public String getClub() {
			return club;
		}
		public void setClub(String club) {
			this.club = club;
		}
		
	    public String getEmail() {
	        return email;
	    }
	    public void setEmail(String email) {
	        this.email = email;
	    }
	    public String getPassword() {
	        return password;
	    }
	    public void setPassword(String password) {
	        this.password = password;
	    }
	    public String getLocation() {
	        return location;
	    }
	    public void setLocation(String location) {
	        this.location = location;
	    }
	    public String getContact() {
	        return contact;
	    }
	    public void setContact(String contact) {
	        this.contact = contact;
	    }

	}


