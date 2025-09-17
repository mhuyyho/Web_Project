/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package murach.business;

import java.math.BigDecimal;

/**
 *
 * @author mhuyy
 */
public class LineItem {

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    private Product product;   // aggregation: LineItem tham chiếu đến Product
    private int quantity;

    public LineItem(Product product, int quantity) {
        this.product = product;
        this.quantity = quantity;
    }

    public BigDecimal getTotal() {
        return product.getPrice().multiply(new BigDecimal(quantity));
    }
    public BigDecimal getAmount() {
        return product.getPrice().multiply(BigDecimal.valueOf(quantity));
    }
}
