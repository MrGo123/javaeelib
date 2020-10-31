package com.sustart.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @ClassName IndexController
 * @Description TODO
 * @Author ZY
 * @Date2020/10/27 22:55
 * @Version 1.0
 **/
@Controller
public class IndexController {
    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String turnToIndex(){

        return "index";
    }
}
