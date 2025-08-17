package com.klef.jfsd.model;

import jakarta.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name="student_table")
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="student_id")
    private int id;

    @Column(name="student_name", nullable=false, length=50)
    private String name;

    @Column(name="student_gender", nullable=false, length=20)
    private String gender;

    @Column(name="student_dob", nullable=false, length=10)
    private String dateOfBirth;  // Changed to String

    @Column(name="student_department", nullable=false, length=50)
    private String department;

    @Column(name="student_email", nullable=false, unique=true, length=50)
    private String email;

    @Column(name="student_password", nullable=false, length=50)
    private String password;

    @Column(name="student_location", nullable=false, length=50)
    private String location;

    @Column(name="student_contact", nullable=false, unique=true, length=20)
    private String contact;

    @ManyToMany
    @JoinTable(
        name = "student_event", 
        joinColumns = @JoinColumn(name = "student_id"), 
        inverseJoinColumns = @JoinColumn(name = "event_id")
    )
    private List<Event> registeredEvents = new ArrayList<>();

    // Getters and setters for all fields
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
    public String getDepartment() {
        return department;
    }
    public void setDepartment(String department) {
        this.department = department;
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
    public List<Event> getRegisteredEvents() {
        return registeredEvents;
    }
    public void setRegisteredEvents(List<Event> registeredEvents) {
        this.registeredEvents = registeredEvents;
    }
}
