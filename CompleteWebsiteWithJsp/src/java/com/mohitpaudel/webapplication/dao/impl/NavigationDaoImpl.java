/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mohitpaudel.webapplication.dao.impl;

import com.mohitpaudel.webapplication.connection.DbConnection;
import com.mohitpaudel.webapplication.dao.NavigationDao;
import com.mohitpaudel.webapplication.entity.Navigation;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Mohit
 */
public class NavigationDaoImpl implements NavigationDao {

    private List<Navigation> navList = new ArrayList<>();
    private DbConnection conn = new DbConnection();

    @Override
    public List<Navigation> getAll() throws SQLException, ClassNotFoundException {
        String sql = "SELECT * FROM tbl_navbar";
        conn.open();
        PreparedStatement stmnt = conn.initStatement(sql);
        ResultSet rs = conn.executeQuery();
        while (rs.next()) {
            Navigation nav = new Navigation();
            nav.setId(rs.getInt("id"));
            nav.setWebsiteName(rs.getString("websiteName"));
            nav.setLinkOne(rs.getString("linkOne"));
            nav.setLinkTwo(rs.getString("linkTwo"));
            nav.setLinkThree(rs.getString("linkThree"));
            nav.setLinkFour(rs.getString("linkFour"));
            navList.add(nav);
        }
        conn.close();
        return navList;
    }


    @Override
    public int update(Navigation nav) throws SQLException, ClassNotFoundException {
        String sql = "UPDATE tbl_navbar SET websiteName=?,linkOne=?,linkTwo=?,linkThree=?,linkFour=? WHERE id=?";
        conn.open();
        PreparedStatement stmnt = conn.initStatement(sql);
        stmnt.setString(1, nav.getWebsiteName());
        stmnt.setString(2, nav.getLinkOne());
        stmnt.setString(3, nav.getLinkTwo());
        stmnt.setString(4, nav.getLinkThree());
        stmnt.setString(5, nav.getLinkFour());
        stmnt.setInt(6, nav.getId());
        int result = conn.executeUpdate();
        conn.close();
        return result;
    }
}
