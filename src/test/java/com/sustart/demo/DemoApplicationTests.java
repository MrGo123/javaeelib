package com.sustart.demo;

import com.sustart.Controller.GoodsController;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.sql.DataSource;
import java.sql.SQLOutput;

@SpringBootTest
class DemoApplicationTests {

    @Autowired
    DataSource dataSource;

    @Before
    void testdatasource(){
        System.out.println(dataSource.getClass());
    }
    @Test
    void contextLoads() {
        testdatasource();
    }

}
