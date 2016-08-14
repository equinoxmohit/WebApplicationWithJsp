/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mohitpaudel.webapplication.dao.impl;

import com.mohitpaudel.webapplication.connection.DbConnection;
import com.mohitpaudel.webapplication.dao.ThirdContentDao;
import com.mohitpaudel.webapplication.entity.ThirdContent;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Mohit
 */
public class ThirdContentDaoImpl implements ThirdContentDao {

    private List<ThirdContent> contentList = new ArrayList<>();
    private DbConnection conn = new DbConnection();

    @Override
    public List<ThirdContent> getAll() throws SQLException, ClassNotFoundException {
        String sql = "SELECT * FROM tbl_thirdContent";
        conn.open();
        PreparedStatement stmnt = conn.initStatement(sql);
        ResultSet rs = conn.executeQuery();
        while (rs.next()) {
            ThirdContent tContent = new ThirdContent();
            tContent.setId(rs.getInt("id"));
            tContent.setContent(rs.getString("thirdContent"));
            contentList.add(tContent);
        }
        conn.close();
        return contentList;
    }

    @Override
    public int update(ThirdContent tContent) throws SQLException, ClassNotFoundException {
        String sql = "UPDATE tbl_thirdContent SET thirdContent=? WHERE id=?";
        conn.open();
        PreparedStatement stmnt = conn.initStatement(sql);
        stmnt.setString(1, tContent.getContent());
        stmnt.setInt(2, tContent.getId());
        int result = conn.executeUpdate();
        conn.close();
        return result;
    }

}
