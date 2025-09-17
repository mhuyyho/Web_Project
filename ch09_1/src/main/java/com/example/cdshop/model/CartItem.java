package com.example.cdshop.model;

import java.io.Serializable;

public class CartItem implements Serializable {
    private CD cd;
    private int quantity;

    public CartItem() {}

    public CartItem(CD cd, int quantity) {
        this.cd = cd;
        this.quantity = quantity;
    }

    public CD getCd() {
        return cd;
    }

    public void setCd(CD cd) {
        this.cd = cd;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotal() {
        return cd.getPrice().doubleValue() * quantity;
    }
}
