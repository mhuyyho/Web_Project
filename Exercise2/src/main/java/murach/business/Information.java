/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package murach.business;

import java.time.LocalDate;
import java.io.Serializable;
/**
 *
 * @author mhuyy
 */
public class Information implements Serializable {
    private String firstName;
    private String lastName;
    private String email;
    
    private LocalDate dob;
    private String answer_hear_about_us;
    private String answer_like_to_receive_anno;
    private String contact;

    

    public Information() {
        firstName = "";
        lastName = "";
        email = "";
        dob = null;
        answer_hear_about_us = "";
        answer_like_to_receive_anno = "";
        contact = "";
    }
    
    public Information(String firstName, String lastName, String email, LocalDate dob, String answer_hear_about_us,
            String answer_like_to_receive_anno, String contact) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.dob = dob;
        this.answer_hear_about_us = answer_hear_about_us;
        this.answer_like_to_receive_anno = answer_like_to_receive_anno;
        this.contact = contact;
    }
    public String getFirstName() {
        return firstName;
    }
    public void setFirstName (String firstName) {
        this.firstName = firstName;
    }
    public String getLastName() {
        return lastName;
    }
    public void setLastName (String lastName) {
        this.lastName = lastName;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
     public LocalDate getDob() {
        return dob;
    }

    public String getAnswer_hear_about_us() {
        return answer_hear_about_us;
    }

    public String getAnswer_like_to_receive_anno() {
        return answer_like_to_receive_anno;
    }

    public String getContact() {
        return contact;
    }

    public void setDob(LocalDate dob) {
        this.dob = dob;
    }

    public void setAnswer_hear_about_us(String answer_hear_about_us) {
        this.answer_hear_about_us = answer_hear_about_us;
    }

    public void setAnswer_like_to_receive_anno(String answer_like_to_receive_anno) {
        this.answer_like_to_receive_anno = answer_like_to_receive_anno;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }
}
