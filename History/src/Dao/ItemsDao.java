package Dao;

import Entity.Items;
import util.DBHelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

//商品的业务逻辑类
public class ItemsDao {
    //获得所有的商品信息
    public ArrayList<Items> getAllItems() throws SQLException {
        ArrayList<Items> list = new ArrayList<>();
        Connection con ;
        PreparedStatement ptmt = null;
        ResultSet rs = null;
        try{
            con = DBHelper.getConnection();
            String sql = "select * from items";
            ptmt = con.prepareStatement(sql);
            rs = ptmt.executeQuery();
            while(rs.next()){
                Items items = new Items();
                items.setId(rs.getInt("id"));
                items.setName(rs.getString("name"));
                items.setCity(rs.getString("city"));
                items.setNumber(rs.getInt("number"));
                items.setPrice(rs.getInt("price"));
                items.setPicture(rs.getString("picture"));
                list.add(items);
            }
            return list;
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if(rs != null){
                rs.close();
                rs = null;
            }
            if(ptmt != null){
                ptmt.close();
                ptmt = null;
            }
        }
        return list;
    }
    //根据id获取商品详细资料
    public Items getItemsById(int id) throws SQLException {
        Connection con;
        PreparedStatement ptmt = null;
        ResultSet rs = null;
        con = DBHelper.getConnection();
        String sql = "select * from items where id = ?;";
        ptmt = con.prepareStatement(sql);
        ptmt.setInt(1, id);
        rs = ptmt.executeQuery();
        if (rs.next()) {
            Items items = new Items();
            items.setId(rs.getInt("id"));
            items.setName(rs.getString("name"));
            items.setCity(rs.getString("city"));
            items.setNumber(rs.getInt("number"));
            items.setPrice(rs.getInt("price"));
            items.setPicture(rs.getString("picture"));
            return items;
        } else {
            return null;
        }
    }
    //获取最近浏览的5条信息
    public ArrayList<Items> getHistory(String list) throws SQLException {
        System.out.println("list:"+list);
        ArrayList<Items> items = new ArrayList<>();
        int count = 5;
        if(list != null && list.length() > 0){
            String[] arr = list.split(",");
            int L = arr.length;
            if(L >= count){
                for(int i = L - 1; i >= L - count ; --i) {
                    items.add(getItemsById(Integer.parseInt(arr[i])));
                }
            }else{
                for(int i = L - 1; i >= 0; i--) {
                    items.add(getItemsById(Integer.parseInt(arr[i])));
                }
            }
            return items;
        }else{
            return null;
        }
    }
}
