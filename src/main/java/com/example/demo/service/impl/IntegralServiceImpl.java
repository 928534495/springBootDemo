package com.example.demo.service.impl;


import com.example.demo.bean.Integral;
import com.example.demo.bean.UserInfo;
import com.example.demo.bean.UserPage;
import com.example.demo.mapper.IntegralMapper;
import com.example.demo.service.IntegralService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public class IntegralServiceImpl implements IntegralService {

    @Autowired
    public IntegralMapper integralMapper;

    @Override
    public int insetIntegral(Integral integral) {
        return integralMapper.insetIntegral(integral);
    }

    @Override
    public UserPage<Integral> findIntegral(HashMap<String, Object> hashMap) {

        UserPage<Integral> userPage = null;
        List<Integral> list = integralMapper.findIntegral(hashMap);
        userPage = new UserPage<>();
        userPage.setCount(integralMapper.integralAccount(hashMap));
        userPage.setData(list);

        return userPage;
    }

}
