package com.klef.jfsd.model;

import java.sql.Blob;
import java.util.Date;
import jakarta.persistence.*;

@Entity
@Table(name = "event_table")
public class Event {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "event_id")
    private int id;

    @Column(name = "event_name", nullable = false, length = 100)
    private String eventName;

    @Column(name = "event_description", nullable = true, length = 500)
    private String description;

    @Column(name = "event_date", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date date;

    @Column(name = "event_location", nullable = true, length = 100)
    private String location;

    @Lob
    @Column(name = "event_image")
    private Blob eventImg;

    @ManyToOne
    @JoinColumn(name = "manager_id", nullable = false) // Foreign key to Manager
    private Manager manager;
    
    

    // Getters and setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEventName() {
        return eventName;
    }

    public void setEventName(String eventName) {
        this.eventName = eventName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public Blob getEventImg() {
        return eventImg;
    }

    public void setEventImg(Blob eventImg) {
        this.eventImg = eventImg;
    }

    public Manager getManager() {
        return manager;
    }

    public void setManager(Manager manager) {
        this.manager = manager;
    }
}
