package com.mycompany.chap7.model;

import java.io.Serializable;
import java.text.NumberFormat;

public class LineItem implements Serializable {
    private CD product;
    private int quantity;
    
    public LineItem() {
        this.product = null;
        this.quantity = 0;
    }
    
    public LineItem(CD product, int quantity) {
        this.product = product;
        this.quantity = quantity;
    }

    public CD getProduct() {
        return product;
    }

    public void setProduct(CD product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
    public double getTotal() {
        return product.getPrice() * quantity;
    }
    
    public String getTotalCurrencyFormat() {
        NumberFormat currency = NumberFormat.getCurrencyInstance();
        return currency.format(this.getTotal());
    }
}