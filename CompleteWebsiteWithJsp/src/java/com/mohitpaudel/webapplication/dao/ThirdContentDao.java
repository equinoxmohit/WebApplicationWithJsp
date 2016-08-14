/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mohitpaudel.webapplication.dao;

import com.mohitpaudel.webapplication.entity.ThirdContent;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Mohit
 */
public interface ThirdContentDao {

    List<ThirdContent> getAll() throws SQLException, ClassNotFoundException;

    int update(ThirdContent tContent) throws SQLException, ClassNotFoundException;
}
