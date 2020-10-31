package com.sustart.Model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @ClassName Product
 * @Description TODO
 * @Author ZY
 * @Date2020/10/21 19:25
 * @Version 1.0
 **/
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Product {
    int id;
    String name;
    int price;
    int originalPrice;
    String characters;
    String detail;
}
