/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mohitpaudel.webapplication.dao.impl;

import com.mohitpaudel.webapplication.connection.DbConnection;
import com.mohitpaudel.webapplication.dao.PlaceholderDao;
import com.mohitpaudel.webapplication.entity.Placeholder;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Mohit
 */
public class PlaceholderDaoImpl implements PlaceholderDao {

    private List<Placeholder> pList = new ArrayList<>();
    private DbConnection conn = new DbConnection();

    @Override
    public List<Placeholder> getAll() throws SQLException, ClassNotFoundException {
        String sql = "SELECT * FROM tbl_placeholder";
        conn.open();
        PreparedStatement stmnt = conn.initStatement(sql);
        ResultSet rs = conn.executeQuery();
        while (rs.next()) {
            Placeholder pl = new Placeholder();
            pl.setId(rs.getInt("id"));
            pl.setContent(rs.getString("placeholder"));
            pList.add(pl);
        }
        conn.close();
        return pList;
    }

    @Override
    public int update(Placeholder placeholder) throws SQLException, ClassNotFoundException {
        String sql = "UPDATE tbl_placeholder SET placeholder=? WHERE id=?";
        conn.open();
        PreparedStatement stmnt = conn.initStatement(sql);
        stmnt.setString(1, placeholder.getContent());
        stmnt.setInt(2, placeholder.getId());
        int result = conn.executeUpdate();
        conn.close();
        return result;
    }

}
