package com.example.demo.mapper;


import com.example.demo.bean.FileType;
import com.example.demo.bean.Files;
import com.example.demo.bean.FilesInfo;
import org.apache.ibatis.annotations.Mapper;

import java.util.HashMap;
import java.util.List;

@Mapper
public interface FileMapper {

    List<FilesInfo> filesInfoList(HashMap<String, Object> map);
    int selectInfoFileCount(HashMap<String, Object> map);
    Integer updateFile(HashMap<String, Object> map);
    List<FileType> fileTypeList(HashMap<String, Object> map);
    Integer setType(HashMap<String, Object> map);
    int insetFile(Files files);
    Files findFiles(int fileId);
}
