/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mohitpaudel.webapplication.entity;

/**
 *
 * @author Mohit
 */
public class Navigation {

    private int id;
    private String websiteName, linkOne, linkTwo, linkThree, linkFour;

    public Navigation() {
    }

    public Navigation(int id, String websiteName, String linkOne, String linkTwo, String linkThree, String linkFour) {
        this.id = id;
        this.websiteName = websiteName;
        this.linkOne = linkOne;
        this.linkTwo = linkTwo;
        this.linkThree = linkThree;
        this.linkFour = linkFour;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getWebsiteName() {
        return websiteName;
    }

    public void setWebsiteName(String websiteName) {
        this.websiteName = websiteName;
    }

    public String getLinkOne() {
        return linkOne;
    }

    public void setLinkOne(String linkOne) {
        this.linkOne = linkOne;
    }

    public String getLinkTwo() {
        return linkTwo;
    }

    public void setLinkTwo(String linkTwo) {
        this.linkTwo = linkTwo;
    }

    public String getLinkThree() {
        return linkThree;
    }

    public void setLinkThree(String linkThree) {
        this.linkThree = linkThree;
    }

    public String getLinkFour() {
        return linkFour;
    }

    public void setLinkFour(String linkFour) {
        this.linkFour = linkFour;
    }

    @Override
    public String toString() {
        return "Navigation{" + "id=" + id + ", websiteName=" + websiteName + ", linkOne=" + linkOne + ", linkTwo=" + linkTwo + ", linkThree=" + linkThree + ", linkFour=" + linkFour + '}';
    }
    
    

}
