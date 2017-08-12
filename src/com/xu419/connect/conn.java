package com.xu419.connect;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conn {
    public Connection getConn(){
        String url="jdbc:mysql://123.206.43.242:3306/driver_man";
        String user="root";
        String password="Zhangshubo1278";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(url,user,password);
            return  connection;
        }
        catch (ClassNotFoundException e){
            e.printStackTrace();
            System.out.print("类加载失败");
            return null;
        }
        catch(SQLException e){
            e.printStackTrace();
            System.out.print("SQL连接错误");
            return null;
        }
    }
}
