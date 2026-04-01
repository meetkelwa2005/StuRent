
package Stu.Rent;

import java.io.File;

public class student_signup {
   
 private int id;
 private String password;
 private String fullname;
private String adhar;
private File  photo;
 private String gender;
private int contact;
 private String mailid;
 private String city;
private String DOB;
private String npassword;
private String cnpassword;

    public student_signup() {
        
    }

    public student_signup(int id, String password, String fullname, String adhar, File photo, String gender, int contact, String mailid, String city, String DOB) {
        this.id = id;
        this.password = password;
        this.fullname = fullname;
        this.adhar = adhar;
        this.photo = photo;
        this.gender = gender;
        this.contact = contact;
        this.mailid = mailid;
        this.city = city;
        this.DOB = DOB;
    }
    

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the fullname
     */
    public String getFullname() {
        return fullname;
    }

    /**
     * @param fullname the fullname to set
     */
    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    /**
     * @return the gender
     */
    public String getGender() {
        return gender;
    }

    /**
     * @param gender the gender to set
     */
    public void setGender(String gender) {
        this.gender = gender;
    }

    /**
     * @return the adhar
     */
    public String getAdhar() {
        return adhar;
    }

    /**
     * @param adhar the adhar to set
     */
    public void setAdhar(String adhar) {
        this.adhar = adhar;
    }

    /**
     * @return the contact
     */
    public int getContact() {
        return contact;
    }

    /**
     * @param contact the contact to set
     */
    public void setContact(int contact) {
        this.contact = contact;
    }

    /**
     * @return the mailid
     */
    public String getMailid() {
        return mailid;
    }

    /**
     * @param mailid the mailid to set
     */
    public void setMailid(String mailid) {
        this.mailid = mailid;
    }

    /**
     * @return the city
     */
    public String getCity() {
        return city;
    }

    /**
     * @param city the city to set
     */
    public void setCity(String city) {
        this.city = city;
    }

    /**
     * @return the photo
     */
    public File getPhoto() {
        return photo;
    }

    /**
     * @param photo the photo to set
     */
    public void setPhoto(File photo) {
        this.photo = photo;
    }

    /**
     * @return the DOB
     */
    public String getDOB() {
        return DOB;
    }

    /**
     * @param DOB the DOB to set
     */
    public void setDOB(String DOB) {
        this.DOB = DOB;
    }

    /**
     * @return the npassword
     */
    public String getNpassword() {
        return npassword;
    }

    /**
     * @param npassword the npassword to set
     */
    public void setNpassword(String npassword) {
        this.npassword = npassword;
    }

    /**
     * @return the cnpassword
     */
    public String getCnpassword() {
        return cnpassword;
    }

    /**
     * @param cnpassword the cnpassword to set
     */
    public void setCnpassword(String cnpassword) {
        this.cnpassword = cnpassword;
    }

    
    
}
