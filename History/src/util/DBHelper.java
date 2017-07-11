package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBHelper {
    private static final String driver = "com.mysql.jdbc.Driver";
    private static final String url = "jdbc:mysql://localhost:3306/yangtong?useUnicode=true&characterEncoding=utf-8";
    private static final String username = "root";
    private static final String password = "root";
    private static Connection con = null;
    static {
        try {
            Class.forName(driver);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    //单例模式返回数据库连接对象
    public static Connection getConnection() throws SQLException {
        if(con == null){
            con = DriverManager.getConnection(url,username,password);
            return con;
        }
        return con;
    }

    public static void main(String[] args) throws SQLException {
        Connection con = DBHelper.getConnection();
        if(con != null){
            System.out.println("数据库连接正常");
        }else{
            System.out.println("数据库连接异常");
        }
    }
 }
