/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package UAS;

/**
 *
 * @author syari
 */
public class UserSession {
    private static String username;
    private static String role;

    public static void setUsername(String user) {
        username = user;
    }

    public static String getUsername() {
        return username;
    }

    public static void setRole(String r) {
        role = r;
    }

    public static String getRole() {
        return role;
    }
    
    // Method untuk logout / clear session
    public static void clearSession() {
        username = null;
        role = null;
    }
    
}

