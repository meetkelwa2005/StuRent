package Stu.Rent;

public class Auth {
    private String id;
    private String pwd;
    private String contact;
    private String mailid;
    private String npwd;
    private String cnpwd;
    public Auth() {
    }

    public Auth(String id, String pwd, String contact, String mailid, String npwd, String cnpwd) {
        this.id = id;
        this.pwd = pwd;
        this.contact = contact;
        this.mailid = mailid;
        this.npwd = npwd;
        this.cnpwd = cnpwd;
    }

  

    /**
     * @return the id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * @return the pwd
     */
    public String getPwd() {
        return pwd;
    }

    /**
     * @param pwd the pwd to set
     */
    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    /**
     * @return the contact
     */
    public String getContact() {
        return contact;
    }

    /**
     * @param contact the contact to set
     */
    public void setContact(String contact) {
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
     * @return the npwd
     */
    public String getNpwd() {
        return npwd;
    }

    /**
     * @param npwd the npwd to set
     */
    public void setNpwd(String npwd) {
        this.npwd = npwd;
    }

    /**
     * @return the cnpwd
     */
    public String getCnpwd() {
        return cnpwd;
    }

    /**
     * @param cnpwd the cnpwd to set
     */
    public void setCnpwd(String cnpwd) {
        this.cnpwd = cnpwd;
    }
}
