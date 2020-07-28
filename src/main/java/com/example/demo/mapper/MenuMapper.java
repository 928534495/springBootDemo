package com.example.demo.mapper;



import com.example.demo.bean.Menu;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MenuMapper {
    public List<Menu> findAll(int id);
}
