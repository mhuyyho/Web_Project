/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package murach.business;

/**
 *
 * @author mhuyy
 */
import java.io.Serializable;

public class User implements Serializable {
    private String email;
    private String firstName;
    private String lastName;
    private String heardFrom;
    private String updates;      // "Yes" hoặc "No"
    private String contactVia;   // Email / Phone / Mail

    public User() {
        this.email = "";
        this.firstName = "";
        this.lastName = "";
        this.heardFrom = "";
        this.updates = "";
        this.contactVia = "";
    }

    public User(String email, String firstName, String lastName,
                String heardFrom, String updates, String contactVia) {
        this.email = email;
        this.firstName = firstName;
        this.lastName = lastName;
        this.heardFrom = heardFrom;
        this.updates = updates;
        this.contactVia = contactVia;
    }

    // Getters và Setters
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
