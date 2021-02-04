package com.nwavguy.utils;

import org.apache.commons.beanutils.BeanUtils;

import javax.enterprise.inject.spi.Bean;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

/**
 * inject the values in the map into bean attributes
 */
public class WebUtils {

    public static <T> T copyParamToBean(Map map, T bean) {
        try {
            System.out.println("Before injection: " + bean);
            //inject all the parameters into the bean
            BeanUtils.populate(bean, map);
            System.out.println("After injection" + bean);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bean;
    }

    /**
     * convert string to int
     * @param strInt
     * @param defaultValue
     * @return
     */

    public static int parseInt(String strInt,int defaultValue) {
        try {
            return Integer.parseInt(strInt);
        } catch (Exception e) {
//            e.printStackTrace();
        }
        return defaultValue;
    }
}
