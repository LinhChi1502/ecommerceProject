package model;

public class User {
    private int userID;
    private String userEmail;
    private String userPass;

    public User() {
    }

    public User(int userID, String userEmail, String userPass) {
        this.userID = userID;
        this.userEmail = userEmail;
        this.userPass = userPass;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserPass() {
        return userPass;
    }

    public void setUserPass(String userPass) {
        this.userPass = userPass;
    }
}
