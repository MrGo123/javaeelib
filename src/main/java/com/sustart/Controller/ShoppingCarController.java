package com.sustart.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @ClassName CarController
 * @Description TODO
 * @Author ZY
 * @Date2020/10/21 18:19
 * @Version 1.0
 **/
@Controller
public class ShoppingCarController {

    @RequestMapping(value = "/shoppingcar")
    public String CarController(){

            return "ShoppingCar";
    }
    @RequestMapping(value = "/addProduct")
    public String AddProduct(){

        return "addProduct";
    }

}
