/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Namqd
 */
//public class DBContext {
//    protected Connection connection;
//    public DBContext()
//    {
//        try {
//            String user = "sa";
//            String pass = "admin12345@";
//            String url = "jdbc:sqlserver://localhost\\SQLEXPRESS:1433;databaseName=AssignmentPRJ";
//            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//            connection = DriverManager.getConnection(url, user, pass);
//        } catch (ClassNotFoundException ex) {
//            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
//        } catch (SQLException ex) {
//            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
//        }
//       
//    }
//}
public class DBContext {
    public Connection getConnection()throws Exception {
        String url = "jdbc:sqlserver://localhost\\"+serverName+":"+portNumber + "\\" 
                                    + instance +";databaseName="+dbName;
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        if(instance == null || instance.trim().isEmpty())
            url = "jdbc:sqlserver://"+serverName+":"+portNumber +";databaseName="+dbName;
        
        return DriverManager.getConnection(url, userName, password);
    }    
    private final String serverName = "LAPTOP-8DH1K3EM\\SQLEXPRESS";
    private final String dbName = "Assignment";
    private final String portNumber = "1433";
    private final String instance="";//LEAVE THIS ONE EMPTY IF YOUR SQL IS A SINGLE INSTANCE
    private final String userName = "sa";
    private final String password = "admin1234";
    public static void main(String[] args) {
        try {
            System.out.println(new DBContext().getConnection());
        } catch (Exception e) {
        }
    }
}

