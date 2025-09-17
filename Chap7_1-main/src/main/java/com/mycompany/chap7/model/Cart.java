package com.mycompany.chap7.model;

import java.io.Serializable;
import java.util.ArrayList;

public class Cart implements Serializable {
    private ArrayList<LineItem> items;
    
    public Cart() {
        items = new ArrayList<>();
    }
    
    public ArrayList<LineItem> getItems() {
        return items;
    }
    
    public int getCount() {
        return items.size();
    }
    
    public void addItem(LineItem item) {
        String code = item.getProduct().getCode();
        int quantity = item.getQuantity();
        
        // Check if the item is already in the cart
        for (int i = 0; i < items.size(); i++) {
            LineItem lineItem = items.get(i);
            if (lineItem.getProduct().getCode().equals(code)) {
                lineItem.setQuantity(lineItem.getQuantity() + quantity);
                return;
            }
        }
        items.add(item);
    }
    
    public void removeItem(String code) {
        for (int i = 0; i < items.size(); i++) {
            LineItem lineItem = items.get(i);
            if (lineItem.getProduct().getCode().equals(code)) {
                items.remove(i);
                return;
            }
        }
    }
    
    public void updateItem(String code, int quantity) {
        for (int i = 0; i < items.size(); i++) {
            LineItem lineItem = items.get(i);
            if (lineItem.getProduct().getCode().equals(code)) {
                lineItem.setQuantity(quantity);
                return;
            }
        }
    }
}