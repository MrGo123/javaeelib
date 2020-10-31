package com.sustart.Service;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;

@WebService
public interface GetWeatherService {
    @WebMethod(operationName = "getWeatherByCity")
    @WebResult(name = "String")
    String getWeatherByCity(@WebParam(name = "cityCode") String cityCode, @WebParam(name = "cityName") String cityName);
}