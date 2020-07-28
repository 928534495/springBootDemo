package com.example.demo.bean;

import org.springframework.aop.AfterReturningAdvice;
import org.springframework.aop.MethodBeforeAdvice;

import java.lang.reflect.Method;

public class SleepAdvie implements MethodBeforeAdvice, AfterReturningAdvice {

    @Override
    public void afterReturning(Object o, Method method, Object[] objects, Object o1) throws Throwable {
        System.out.println("前置增强---");
    }

    @Override
    public void before(Method method, Object[] objects, Object o) throws Throwable {

        System.out.println("后置增强---");
    }
}
