package com.xu419.session;

public class admin_session {
    private static String admin;

    public static String getAdmin() {
        return admin;
    }

    public static void setAdmin(String admin) {
        admin_session.admin = admin;
    }
}
