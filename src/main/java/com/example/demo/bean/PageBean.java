package com.example.demo.bean;

import java.util.List;

public class PageBean<T> {
    private  int curPage;//当前页
    private int prePage;
    private int nextPage;//下一页
    private int totalPage;//总页数
            private int totalRecord;//记录数
    private int pageSize =5;
    private List<T> list;


    public PageBean(int curPage, int pageSize, int totalRecord){
        this.curPage=curPage;
        this.pageSize=pageSize;
        this.totalRecord=totalRecord;
        totalPage=totalRecord%pageSize==0?totalRecord/pageSize:totalRecord/pageSize+1;

    }

    public int getCurPage() {
        return curPage;
    }

    public void setCurPage(int curPage) {
        this.curPage = curPage;
    }

    public int getPrePage() {
        return curPage==1?1:curPage-1;
    }

    public void setPrePage(int prePage) {
        this.prePage = prePage;
    }

    public int getNextPage() {
        return curPage==totalPage?totalPage:curPage+1;
    }

    public void setNextPage(int nextPage) {
        this.nextPage = nextPage;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getTotalRecord() {
        return totalRecord;
    }

    public void setTotalRecord(int totalRecord) {
        this.totalRecord = totalRecord;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }
}
