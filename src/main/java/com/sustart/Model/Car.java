package com.sustart.Model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @ClassName Car
 * @Description TODO
 * @Author ZY
 * @Date2020/10/28 19:07
 * @Version 1.0
 **/
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Car {
    int id;
    String name;
    int price;
    int originalPrice;
    String characters;
    String detail;
    int num;
}
