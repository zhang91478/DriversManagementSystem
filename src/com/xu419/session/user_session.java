package com.xu419.session;

public class user_session {
    static String user;

    public static String getUser() {
        return user;
    }

    public static void setUser(String user) {
        user_session.user = user;
    }
}
