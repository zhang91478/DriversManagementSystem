package com.xu419.session;

public class admin_session {
    private static String adminer;

    public static String getAdmin() {
        return adminer;
    }

    public static void setAdmin(String admin) {
        admin_session.adminer = admin;
    }
}
