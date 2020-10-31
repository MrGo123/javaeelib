package com.sustart.Controller;

import com.sustart.Model.Product;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;

/**
 * @ClassName GoodsController
 * @Description TODO
 * @Author ZY
 * @Date2020/10/28 18:16
 * @Version 1.0
 **/

@Controller
public class GoodsController {

    @RequestMapping(value = "/addProduct",method = RequestMethod.POST)
    public String addProduct(){

        return null;
    }
}
