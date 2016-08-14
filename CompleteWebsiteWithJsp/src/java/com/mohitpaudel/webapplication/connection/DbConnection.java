package com.mohitpaudel.webapplication.connection;

/*
 *@author Mohit
 */
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DbConnection {

    private Connection conn = null;
    private PreparedStatement stmnt = null;

    public void open() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost/cms_jsp", "root", "");
    }

    public PreparedStatement initStatement(String sql) throws SQLException {
        stmnt = conn.prepareStatement(sql);
        return stmnt;
    }

    public int executeUpdate() throws SQLException {
        return stmnt.executeUpdate();
    }

    public ResultSet executeQuery() throws SQLException {
        return stmnt.executeQuery();
    }

    public void close() throws SQLException {
        if (conn != null || !conn.isClosed()) {
            conn.close();
            conn = null;
        }
    }

}
