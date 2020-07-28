package com.example.demo.service;


import com.example.demo.bean.Integral;
import com.example.demo.bean.UserPage;

import java.util.HashMap;
import java.util.List;

public interface IntegralService {

    int insetIntegral(Integral integral);
    UserPage<Integral> findIntegral(HashMap<String,Object> hashMap);

}
