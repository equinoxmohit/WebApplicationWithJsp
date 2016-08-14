/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mohitpaudel.webapplication.dao;

import com.mohitpaudel.webapplication.entity.SecondContent;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Mohit
 */
public interface SecondContentDao {

    List<SecondContent> getAll() throws SQLException, ClassNotFoundException;

    int update(SecondContent secondContent) throws SQLException, ClassNotFoundException;

}
