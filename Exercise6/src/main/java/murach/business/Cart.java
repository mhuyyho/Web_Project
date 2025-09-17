/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package murach.business;

/**
 *
 * @author mhuyy
 */
import java.math.BigDecimal;
import java.util.*;

public class Cart {
    private final Map<String, LineItem> items = new LinkedHashMap<>();

    public Collection<LineItem> getItems() { return items.values(); }
    public boolean isEmpty() { return items.isEmpty(); }

    public void add(Product p, int qty) {
        LineItem li = items.get(p.getCode());
        if (li == null) items.put(p.getCode(), new LineItem(p, qty));
        else li.setQuantity(li.getQuantity() + qty);
    }

    public void update(String code, int qty) {
        LineItem li = items.get(code);
        if (li == null) return;
        if (qty <= 0) items.remove(code);
        else li.setQuantity(qty);
    }

    public void remove(String code) { items.remove(code); }

    public BigDecimal getTotal() {
        return items.values().stream().map(LineItem::getAmount).reduce(BigDecimal.ZERO, BigDecimal::add);
    }
}
