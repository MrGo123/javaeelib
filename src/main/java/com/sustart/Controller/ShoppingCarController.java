package com.sustart.Controller;

import com.sustart.Mapper.CarMapper;
import com.sustart.Mapper.ProductMapper;
import com.sustart.Model.Car;
import com.sustart.Model.Product;
import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.jws.WebParam;
import javax.servlet.http.HttpServletRequest;
import javax.xml.bind.PrintConversionEvent;
import java.awt.print.PrinterAbortException;
import java.util.List;

/**
 * @ClassName CarController
 * @Description TODO
 * @Author ZY
 * @Date2020/10/21 18:19
 * @Version 1.0
 **/
@Controller
public class ShoppingCarController {

    @Autowired
    CarMapper carMapper;
    @Autowired
    ProductMapper productMapper;

    /**
     * todo
     * 商品主键冲突未处理
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/shoppingcar")
    public String CarController(Model model) {
        List<Car> list = carMapper.getCarProduct();
        int sumNum, sumCharge, average;
        sumNum = sumNum(list);
        sumCharge = sumCharge(list);
        average = sumCharge / sumNum;
        model.addAttribute("list", list);
        model.addAttribute("sumNum", sumNum);
        model.addAttribute("sumCharge", sumCharge);
        model.addAttribute("average", average);
        return "ShoppingCar";
    }

    @RequestMapping(value = "/carList")
    @ResponseBody
    public List< Car> getCarList(){
        List< Car> carList = carMapper.getCarProduct();
        return carList;
    }

    @RequestMapping(value = "/searchCar")
    public String searchPrductByNameOrId(@RequestParam(value = "search_car_id", required = false, defaultValue = "0") int searchId, @RequestParam(value = "search_car_name", required = false) String searchName, Model model) {
        List<Car> list = carMapper.searchByNameOrId(searchId, searchName);

        int sumNum, sumCharge, average;
        sumNum = sumNum(list);
        sumCharge = sumCharge(list);
        average = sumCharge / sumNum;

        model.addAttribute("list", list);
        model.addAttribute("sumNum", sumNum);
        model.addAttribute("sumCharge", sumCharge);
        model.addAttribute("average", average);
        return "ShoppingCar";
    }

    private static int staticCarId;
    @RequestMapping(value = "/AlterCarProductNum", method = RequestMethod.GET)
    public String alterCarProductNum(@RequestParam(value = "productId") int productId, Model model) {
        staticCarId = productId;
        Car car = carMapper.searchById(productId);
        model.addAttribute("car", car);
        return "alterCarNum";
    }

    @RequestMapping(value = "/saveAlter", method = RequestMethod.GET)
    public String saveAlter(@RequestParam(value = "alterNum") int alterNum, HttpServletRequest request) {
        carMapper.updateProduct(staticCarId,alterNum);
        return "redirect:/shoppingcar";
    }


    @RequestMapping(value = "/addToCar", method = RequestMethod.GET)
    public String addToCar(@RequestParam(value = "add_product_id", required = true, defaultValue = "0") int id, @RequestParam(value = "add_product_num", required = true, defaultValue = "1") int num) {
        List<Car> list = carMapper.getCarProduct();
        for (Car car : list) {
            if (car.getId() == id) {
                car.setNum(car.getNum() + num);
                carMapper.updateProduct(car.getId(), car.getNum());
                return "redirect:/shoppingcar";
            }
        }
        Product product = productMapper.searchById(id);
        Car car = new Car();
        car.setId(product.getId());
        car.setName(product.getName());
        car.setPrice(product.getPrice());
        car.setOriginalPrice(product.getOriginalPrice());
        car.setCharacters(product.getCharacters());
        car.setDetail(product.getDetail());
        car.setNum(num);
        int flag = carMapper.inserToCar(car);
        if (flag == 1) {
            System.out.println("insert successly");
        } else {
            System.out.println("insert falsely");
        }
        return "redirect:/shoppingcar";
    }

    @RequestMapping(value = "/DeleteCarProduct", method = RequestMethod.GET)
    public String deleteCarProduct(@RequestParam(value = "productId") int productId) {
        int flag = carMapper.deleteProduct(productId);
        return "redirect:/shoppingcar";
    }


    int sumNum(List<Car> l) {
        int sum = 0;
        for (Car car : l) {
            sum += car.getNum();
        }
        return sum;
    }

    int sumCharge(List<Car> carList) {
        int sum = 0;
        for (Car car : carList) {
            sum += car.getNum() * car.getPrice();
        }
        return sum;
    }

}
