package com.sustart.Configuration;

import com.sustart.Service.GetWeatherService;
import org.apache.cxf.Bus;
import org.apache.cxf.bus.spring.SpringBus;
import org.apache.cxf.jaxws.EndpointImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.xml.ws.Endpoint;

/**
 * @ClassName WebServiceConfig
 * @Description TODO
 * @Author ZY
 * @Date2020/10/21 20:17
 * @Version 1.0
 **/
@Configuration
public class WebServiceConfig {

    @Autowired
    private GetWeatherService getWeatherService;


    @Bean(name = Bus.DEFAULT_BUS_ID)
    public SpringBus springBus() {
        return new SpringBus();
    }


    @Bean
    public Endpoint endpoint() {
        EndpointImpl endpoint = new EndpointImpl(springBus(), getWeatherService);
        endpoint.publish("/getWeatherService");
        return endpoint;
    }
}
