package entities;
// Generated Mar 21, 2016 12:23:34 AM by Hibernate Tools 4.3.1

/**
 * Users generated by hbm2java
 */
public class Users implements java.io.Serializable {

    private int userId;
    private String name;
    private String email;
    private String password;
    private String avatar;
    private String gender;
    private String country;
    private Boolean delete;

    public Users() {
    }

    public Users(int userId) {
        this.userId = userId;
    }

    public Users(int userId, String name, String email, String password, String avatar, String gender, String country, Boolean delete) {
        this.userId = userId;
        this.name = name;
        this.email = email;
        this.password = password;
        this.avatar = avatar;
        this.gender = gender;
        this.country = country;
        this.delete = delete;
    }

    public int getUserId() {
        return this.userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getGender() {
        return this.gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getCountry() {
        return this.country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public Boolean getDelete() {
        return this.delete;
    }

    public void setDelete(Boolean delete) {
        this.delete = delete;
    }

}
