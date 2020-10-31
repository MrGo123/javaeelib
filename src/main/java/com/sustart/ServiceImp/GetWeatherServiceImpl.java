package com.sustart.ServiceImp;

import com.sustart.Service.GetWeatherService;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.jws.WebService;

/**
 * @ClassName GetWeatherServiceImpl
 * @Description TODO
 * @Author ZY
 * @Date2020/10/21 20:15
 * @Version 1.0
 **/
@Service
@WebService(targetNamespace = "http://com.newchinalife.esb/",endpointInterface = "com.sustart.Service.GetWeatherService")
@Component
public class GetWeatherServiceImpl implements GetWeatherService {
    @Override
    @RequestMapping(value = "/getWeatherByCity")
    public String getWeatherByCity(String cityCode, String cityName) {

        return "上海：020；天气：多云转晴";
    }
}
