package com.xu419.model;

import java.util.Date;

public class UseTableForCars {
    private String carID;
    private Date buydate;
    private String enqinenum;//发动机编号
    private String vin;//车辆识别吗
    public UseTableForCars(){}

    public String getCarID() {
        return carID;
    }

    public void setCarID(String carID) {
        this.carID = carID;
    }

    public Date getBuydate() {
        return buydate;
    }

    public void setBuydate(Date buydate) {
        this.buydate = buydate;
    }

    public String getEnqinenum() {
        return enqinenum;
    }

    public void setEnqinenum(String enqinenum) {
        this.enqinenum = enqinenum;
    }

    public String getVin() {
        return vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }
}
