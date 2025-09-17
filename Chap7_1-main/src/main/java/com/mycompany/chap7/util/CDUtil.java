package com.mycompany.chap7.util;

import java.util.ArrayList;

import com.mycompany.chap7.model.CD;

public class CDUtil {
    
    public static ArrayList<CD> getCDList() {
        ArrayList<CD> cds = new ArrayList<>();
        
        cds.add(new CD("8601", "86 (the band) - True Life Songs and Pictures", 14.95));
        cds.add(new CD("pf01", "Paddlefoot - The first CD", 12.95));
        cds.add(new CD("pf02", "Paddlefoot - The second CD", 14.95));
        cds.add(new CD("jr01", "Joe Rut - Genuine Wood Grained Finish", 14.95));
        
        return cds;
    }
    
    public static CD getCD(String code) {
        ArrayList<CD> cds = getCDList();
        
        for (CD cd : cds) {
            if (cd.getCode().equals(code)) {
                return cd;
            }
        }
        return null;
    }
}