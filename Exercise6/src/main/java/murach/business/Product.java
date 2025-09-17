/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package murach.business;


import java.math.BigDecimal;


public class Product {
    private String code;
    private String desc;
    private BigDecimal price;
    
    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    
    public Product(){}
    
    public Product(String code, String desc, BigDecimal price)
    {
        this.code = code;
        this.desc = desc;
        this.price = price;
    }
    
    
}
