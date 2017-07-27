package com.xu419.model;

public class UseTableForAdmin {
    private String adminer;
    private String passwd;

    public UseTableForAdmin(){}
    public void setAdminer(String adminer){
        this.adminer=adminer;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }

    public String getAdminer() {
        return adminer;
    }

    public String getPasswd() {
        return passwd;
    }
}
