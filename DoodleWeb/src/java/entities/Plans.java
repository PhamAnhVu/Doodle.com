package entities;
// Generated Mar 21, 2016 12:23:34 AM by Hibernate Tools 4.3.1

import java.util.Date;

/**
 * Plans generated by hbm2java
 */
public class Plans implements java.io.Serializable {

    private int planId;
    private Integer poolId;
    private Date date;
    private Date time;

    public Plans() {
    }

    public Plans(int planId) {
        this.planId = planId;
    }

    public Plans(int planId, Integer poolId, Date date, Date time) {
        this.planId = planId;
        this.poolId = poolId;
        this.date = date;
        this.time = time;
    }

    public int getPlanId() {
        return this.planId;
    }

    public void setPlanId(int planId) {
        this.planId = planId;
    }

    public Integer getPoolId() {
        return this.poolId;
    }

    public void setPoolId(Integer poolId) {
        this.poolId = poolId;
    }

    public Date getDate() {
        return this.date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Date getTime() {
        return this.time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

}