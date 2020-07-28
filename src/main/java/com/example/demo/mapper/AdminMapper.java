package com.example.demo.mapper;



import com.example.demo.bean.Admin;
import com.example.demo.bean.Level;
import org.apache.ibatis.annotations.Mapper;

import java.util.HashMap;
import java.util.List;

@Mapper
public interface AdminMapper {

    Admin login(Admin admin);
//    List<Admin> selectList(Map map);
    List<Admin> adminList(Admin admin);
    List<Level> levelList();
    int updateLevel(HashMap<String, Object> hashMap);
    Level level(int userLevelId);

}
