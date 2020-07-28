package com.example.demo.mapper;



import com.example.demo.aop.SystemLog;
import org.apache.ibatis.annotations.Mapper;

import java.util.HashMap;
import java.util.List;

@Mapper
public interface SystemLogMapper {

//    int deleteByPrimaryKey(String id);

    int insert(SystemLog record);
    List<SystemLog> listSystemLog(HashMap<String, Object> hashMap);
    int selectLogCount(HashMap<String, Object> hashMap);
    int deleteLog(String id);

//    int insertSelective(SystemLog record);
//
//    SystemLog selectByPrimaryKey(String id);
//
//    int updateByPrimaryKeySelective(SystemLog record);
//
//    int updateByPrimaryKey(SystemLog record);

}
