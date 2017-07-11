package Dao1;

import javaBeans.User;

public class UserDao {
    public boolean usersLogin(User user){
        if(user.getUsername().equals("admin") && user.getPassword().equals("admin")){
            return true;
        }
        return false;
    }
}
