package com.example.demo.mapper;



import com.example.demo.bean.User;
import com.example.demo.bean.UserInfo;
import org.apache.ibatis.annotations.Mapper;

import java.util.HashMap;
import java.util.List;

@Mapper
public interface UserMapper {

    List<UserInfo> selectUserInfoList(HashMap<String, Object> map);
    Integer selectUserCount(HashMap<String, Object> map);
    User login(User user);
    Integer verAccount(String userAccount);
    Integer uVerifiPhone(String userPhone);
    Integer regis(User user);
    Integer updateUser(HashMap<String, Object> map);
    Integer changeMsg(User user);
    User verifyPass(int userId);
}
