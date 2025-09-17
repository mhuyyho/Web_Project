package com.example.cdshop.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Cart implements Serializable {
    private List<CartItem> items;

    public Cart() {
        items = new ArrayList<>();
    }

    public List<CartItem> getItems() {
        return items;
    }

    public void addItem(CartItem item) {
        for (CartItem c : items) {
            if (c.getCd().getCode().equals(item.getCd().getCode())) {
                c.setQuantity(c.getQuantity() + item.getQuantity());
                return;
            }
        }
        items.add(item);
    }

    public void removeItem(String code) {
        items.removeIf(c -> c.getCd().getCode().equals(code));
    }

    public double getTotal() {
        double total = 0;
        for (CartItem c : items) {
            total += c.getTotal();
        }
        return total;
    }
}
