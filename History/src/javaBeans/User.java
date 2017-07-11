package javaBeans;
//1.类公有
public class User {
    //2.属性私有
    private String username;
    //3.空的构造方法
    public User(){}
    //4.getter  setter
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    private String password;


}
