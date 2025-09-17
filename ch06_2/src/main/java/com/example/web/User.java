package com.example.web;

public class User {
    private String email;
    private String firstName;
    private String lastName;
    private String heardFrom;
    private String updates;
    private String contactVia;

    public User() {}

    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirstName() {
        return firstName;
    }
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getHeardFrom() {
        return heardFrom;
    }
    public void setHeardFrom(String heardFrom) {
        this.heardFrom = heardFrom;
    }

    public String getUpdates() {
        return updates;
    }
    public void setUpdates(String updates) {
        this.updates = updates;
    }

    public String getContactVia() {
        return contactVia;
    }
    public void setContactVia(String contactVia) {
        this.contactVia = contactVia;
    }
}
