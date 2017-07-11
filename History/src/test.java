import Dao.ItemsDao;
import Entity.Items;

import java.sql.SQLException;
import java.util.ArrayList;

public class test {

    public static void main(String[] args) throws SQLException {
        String demo  = "1,2,34,4,5,4,2,1,";
        String[] list = demo.split(",");
        for (String s : list) {
            System.out.println(s);
        }
    }
}
