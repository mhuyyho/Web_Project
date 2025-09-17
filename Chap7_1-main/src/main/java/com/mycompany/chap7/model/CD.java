package com.mycompany.chap7.model;

import java.io.Serializable;
import java.text.NumberFormat;

public class CD implements Serializable {
    private String code;
    private String description;
    private double price;
    
    public CD() {
        code = "";
        description = "";
        price = 0;
    }
    
    public CD(String code, String description, double price) {
        this.code = code;
        this.description = description;
        this.price = price;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    
    public String getPriceCurrencyFormat() {
        NumberFormat currency = NumberFormat.getCurrencyInstance();
        return currency.format(price);
    }
}