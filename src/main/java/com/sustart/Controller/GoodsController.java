package com.sustart.Controller;

import com.sun.jmx.snmp.SnmpUnknownModelLcdException;
import com.sustart.Mapper.ProductMapper;
import com.sustart.Model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @ClassName GoodsController
 * @Description TODO
 * @Author ZY
 * @Date2020/10/28 18:16
 * @Version 1.0
 **/

@Controller
public class GoodsController {

    @Autowired
    ProductMapper productMapper;

    @RequestMapping(value = "/addProduct", method = RequestMethod.GET)
    public String addProduct(Model model) {
        /**
         * todo
         * list products info
         */
        List<Product> list = productMapper.getProducts();
        model.addAttribute("list", list);

        return "addProduct";
    }

    @RequestMapping(value = "/searchProduct", method = RequestMethod.GET)
    public String searchPrductByNameOrId(@RequestParam(value = "search_product_id", required = false, defaultValue = "0") int searchId, @RequestParam(value = "search_product_name", required = false) String searchName, Model model) {
        List<Product> list = productMapper.searchByNameOrId(searchId, searchName);
        model.addAttribute("list", list);
        return "addProduct";
    }

    @RequestMapping(value = "/searchByName", method = RequestMethod.GET)
    public String indexSearchControl(@RequestParam(value = "searchArea") String searchContent,Model model) {
        int stringLength = searchContent.length();
        if (stringLength > 10 || stringLength < 2) {
            return "searchResult";
        }
        List<Product> list = productMapper.searchByNameOrId(0, searchContent);
        model.addAttribute("list", list);
        return "addProduct";
    }
}
