package entities;
// Generated Mar 21, 2016 12:23:34 AM by Hibernate Tools 4.3.1

/**
 * Pool generated by hbm2java
 */
public class Pool implements java.io.Serializable {

    private int poolId;
    private String title;
    private String location;
    private String description;
    private String createrName;
    private String email;
    private String adminLink;
    private String participationLink;
    private Integer delete;

    public Pool() {
    }

    public Pool(int poolId, String title) {
        this.poolId = poolId;
        this.title = title;
    }

    public Pool(int poolId, String title, String location, String description, String createrName, String email, String adminLink, String participationLink, Integer delete) {
        this.poolId = poolId;
        this.title = title;
        this.location = location;
        this.description = description;
        this.createrName = createrName;
        this.email = email;
        this.adminLink = adminLink;
        this.participationLink = participationLink;
        this.delete = delete;
    }

    public int getPoolId() {
        return this.poolId;
    }

    public void setPoolId(int poolId) {
        this.poolId = poolId;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getLocation() {
        return this.location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCreaterName() {
        return this.createrName;
    }

    public void setCreaterName(String createrName) {
        this.createrName = createrName;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAdminLink() {
        return this.adminLink;
    }

    public void setAdminLink(String adminLink) {
        this.adminLink = adminLink;
    }

    public String getParticipationLink() {
        return this.participationLink;
    }

    public void setParticipationLink(String participationLink) {
        this.participationLink = participationLink;
    }

    public Integer getDelete() {
        return this.delete;
    }

    public void setDelete(Integer delete) {
        this.delete = delete;
    }

}
