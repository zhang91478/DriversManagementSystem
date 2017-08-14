package com.xu419.session;

public class user_session {
    static String account;

    public static String getUser() {
        return account;
    }

    public static void setUser(String user) {
        user_session.account = user;
    }
}
