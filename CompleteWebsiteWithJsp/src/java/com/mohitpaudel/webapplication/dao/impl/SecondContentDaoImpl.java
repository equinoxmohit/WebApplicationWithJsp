/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mohitpaudel.webapplication.dao.impl;

import com.mohitpaudel.webapplication.connection.DbConnection;
import com.mohitpaudel.webapplication.dao.SecondContentDao;
import com.mohitpaudel.webapplication.entity.SecondContent;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Mohit
 */
public class SecondContentDaoImpl implements SecondContentDao {

    private List<SecondContent> contentList = new ArrayList<>();
    private DbConnection conn = new DbConnection();

    @Override
    public List<SecondContent> getAll() throws SQLException, ClassNotFoundException {
        String sql = "SELECT * FROM tbl_secondcontent";
        conn.open();
        PreparedStatement stmnt = conn.initStatement(sql);
        ResultSet rs = conn.executeQuery();
        while (rs.next()) {
            SecondContent sc = new SecondContent();
            sc.setId(rs.getInt("id"));
            sc.setContent(rs.getString("secondContent"));
            contentList.add(sc);
        }
        conn.close();
        return contentList;
    }

    @Override
    public int update(SecondContent secondContent) throws SQLException, ClassNotFoundException {
        String sql = "UPDATE tbl_secondcontent SET secondContent=? WHERE id=?";
        conn.open();
        PreparedStatement stmnt = conn.initStatement(sql);
        stmnt.setString(1, secondContent.getContent());
        stmnt.setInt(2, secondContent.getId());
        int result = conn.executeUpdate();
        conn.close();
        return result;
    }

}
