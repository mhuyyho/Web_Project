/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package murach.data;

/**
 *
 * @author mhuyy
 */

import murach.business.Product;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ProductDB {
        private static final Map<String, Product> DATA = Map.of(
        "p86", new Product("p86", "86 (the band) - True Life Songs and Pictures", new BigDecimal("14.95")),
        "pf1", new Product("pf1", "Paddlefoot - The first CD", new BigDecimal("12.95")),
        "pf2", new Product("pf2", "Paddlefoot - The second CD", new BigDecimal("14.95")),
        "jr1", new Product("jr1", "Joe Rut - Genuine Wood Grained Finish", new BigDecimal("14.95"))
    );

    public static Product find(String code) { return DATA.get(code); }
    public static List<Product> all() { return List.copyOf(DATA.values()); }
    public static List<Product> findAll() { return new ArrayList<>(DATA.values()); }
}
