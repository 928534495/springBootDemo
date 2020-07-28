package com.example.demo.mapper;


import com.example.demo.bean.Integral;
import com.example.demo.bean.UserPage;
import org.apache.ibatis.annotations.Mapper;

import java.util.HashMap;
import java.util.List;

@Mapper
public interface IntegralMapper {

    public int insetIntegral(Integral integral);
    public List<Integral> findIntegral(HashMap<String,Object> hashMap);
    int integralAccount(HashMap<String,Object> hashMap);
}
