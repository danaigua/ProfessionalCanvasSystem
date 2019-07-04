package com.job.pojo;

/**
 * 数据监听类
 */
public class Monitor {
    private String searchKeyWord;
    private String searchAddr;
    private Integer searchKeyWordNO;
    private Integer searchAddrNo;
    private Integer id;

    public String getSearchKeyWord() {
        return searchKeyWord;
    }

    public void setSearchKeyWord(String searchKeyWord) {
        this.searchKeyWord = searchKeyWord;
    }

    public String getSearchAddr() {
        return searchAddr;
    }

    public void setSearchAddr(String searchAddr) {
        this.searchAddr = searchAddr;
    }

    public Integer getSearchKeyWordNO() {
        return searchKeyWordNO;
    }

    public void setSearchKeyWordNO(Integer searchKeyWordNO) {
        this.searchKeyWordNO = searchKeyWordNO;
    }

    public Integer getSearchAddrNo() {
        return searchAddrNo;
    }

    public void setSearchAddrNo(Integer searchAddrNo) {
        this.searchAddrNo = searchAddrNo;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}
