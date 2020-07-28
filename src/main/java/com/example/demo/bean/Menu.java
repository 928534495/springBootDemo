package com.example.demo.bean;

import java.util.List;

public class Menu {

    private int menu_id;
    private String menu_Name;
    private String url;
    private List<Menu> menuList;
    private int orders;
    public Menu() {

    }

    public int getOrders() {
        return orders;
    }

    public void setOrders(int orders) {
        this.orders = orders;
    }

    public int getMenu_id() {
        return menu_id;
    }

    public void setMenu_id(int menu_id) {
        this.menu_id = menu_id;
    }

    public String getMenu_Name() {
        return menu_Name;
    }

    public void setMenu_Name(String menu_Name) {
        this.menu_Name = menu_Name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public List<Menu> getMenuList() {
        return menuList;
    }

    public void setMenuList(List<Menu> menuList) {
        this.menuList = menuList;
    }

    @Override
    public String toString() {
        return "Menu{" +
                "menu_id=" + menu_id +
                ", menu_Name='" + menu_Name + '\'' +
                ", url='" + url + '\'' +
                ", menuList=" + menuList +
                ", orders=" + orders +
                '}';
    }
}
