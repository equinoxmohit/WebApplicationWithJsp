/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mohitpaudel.webapplication.dao;

import com.mohitpaudel.webapplication.entity.Placeholder;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Mohit
 */
public interface PlaceholderDao {

    List<Placeholder> getAll() throws SQLException, ClassNotFoundException;

    int update(Placeholder placeholder) throws SQLException, ClassNotFoundException;

}
